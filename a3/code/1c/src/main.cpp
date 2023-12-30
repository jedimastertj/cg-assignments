// Assignment 03: Lighting and shading

/* References
  Trackball: http://en.wikibooks.org/wiki/OpenGL_Programming/Modern_OpenGL_Tutorial_Arcball
*/

#include "utils.h"
#include "math.h"

#define  GLM_FORCE_RADIANS
#define  GLM_ENABLE_EXPERIMENTAL
#define RADIAN_PER_DEGREE 0.0174532
#define RADIUS 10
#define SAMPLES 60

#include <glm/gtc/type_ptr.hpp>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/string_cast.hpp>

// Globals
int screen_width = 640, screen_height = 640;
GLint vModel_uniform, vView_uniform, vProjection_uniform;
glm::mat4 modelT, viewT, projectionT; // The model, view and projection transformations
GLint vColor_uniform;
GLint lightPosition_uniform, lightColor_uniform, eyeNormal_uniform; // introduced uniforms

double oldX, oldY, currentX, currentY;
bool isDragging=false;

void createCubeObject(unsigned int &, unsigned int &);
void createSphereObject(unsigned int &, unsigned int &);

void setupModelTransformation(unsigned int &);
void setupViewTransformation(unsigned int &);
void setupProjectionTransformation(unsigned int &);
glm::vec3 getTrackBallVector(double x, double y);

int main(int, char**)
{
    // Setup window
    GLFWwindow *window = setupWindow(screen_width, screen_height);
    ImGuiIO& io = ImGui::GetIO(); // Create IO object

    ImVec4 clearColor = ImVec4(1.0f, 1.0f, 1.0f, 1.00f);

    unsigned int shaderProgram = createProgram("./shaders/vshader.vs", "./shaders/fshader.fs");

    // Get handle to color variable in shader
    vColor_uniform = glGetUniformLocation(shaderProgram, "vColor");
    if(vColor_uniform == -1){
        fprintf(stderr, "Could not bind location: vColor \n");
        exit(0);
    }

    // Get handle to set value for light position
    lightPosition_uniform = glGetUniformLocation(shaderProgram, "lightPosition");
    if(lightPosition_uniform == -1){
        fprintf(stderr, "Could not bind location: lightPosition \n");
        exit(0);
    }

    // Get handle to set value for light color
    lightColor_uniform = glGetUniformLocation(shaderProgram, "lightColor");
    if(lightColor_uniform == -1){
        fprintf(stderr, "Could not bind location: lightColor \n");
        exit(0);
    }

    // Get handle to set value for eye normal
    eyeNormal_uniform = glGetUniformLocation(shaderProgram, "eyeNormal");
    if(eyeNormal_uniform == -1){
        fprintf(stderr, "Could not bind location: eyeNormal \n");
        exit(0);
    }

    glUseProgram(shaderProgram);

    unsigned int VAO;
    glGenVertexArrays(1, &VAO);

    setupModelTransformation(shaderProgram);
    setupViewTransformation(shaderProgram);
    setupProjectionTransformation(shaderProgram);

    // createCubeObject(shaderProgram, VAO);
    createSphereObject(shaderProgram, VAO);

    oldX = oldY = currentX = currentY = 0.0;
    int prevLeftButtonState = GLFW_RELEASE;

    while (!glfwWindowShouldClose(window))
    {
        glfwPollEvents();

        // Get current mouse position
        int leftButtonState = glfwGetMouseButton(window,GLFW_MOUSE_BUTTON_LEFT);
        double x,y;
        glfwGetCursorPos(window,&x,&y);
        if(leftButtonState == GLFW_PRESS && prevLeftButtonState == GLFW_RELEASE){
            isDragging = true;
            currentX = oldX = x;
            currentY = oldY = y;
        }
        else if(leftButtonState == GLFW_PRESS && prevLeftButtonState == GLFW_PRESS){
            currentX = x;
            currentY = y;
        }
        else if(leftButtonState == GLFW_RELEASE && prevLeftButtonState == GLFW_PRESS){
            isDragging = false;
        }

        // Rotate based on mouse drag movement
        prevLeftButtonState = leftButtonState;
        if (isDragging && (currentX !=oldX || currentY != oldY))
        {
            glm::vec3 va = getTrackBallVector(oldX, oldY);
            glm::vec3 vb = getTrackBallVector(currentX, currentY);

            float angle = acos(std::min(1.0f, glm::dot(va,vb)));
            glm::vec3 axis_in_camera_coord = glm::cross(va, vb);
            glm::mat3 camera2object = glm::inverse(glm::mat3(viewT*modelT));
            glm::vec3 axis_in_object_coord = camera2object * axis_in_camera_coord;
            modelT = glm::rotate(modelT, angle, axis_in_object_coord);
            glUniformMatrix4fv(vModel_uniform, 1, GL_FALSE, glm::value_ptr(modelT));

            oldX = currentX;
            oldY = currentY;
        }

        // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        glUseProgram(shaderProgram);

        {
            ImGui::Begin("Information");                          
            ImGui::Text("%.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
            ImGui::End();
        }

        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(clearColor.x, clearColor.y, clearColor.z, clearColor.w);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        glBindVertexArray(VAO); 
        
        // set values for the uniforms
        glUniform3f(vColor_uniform, 0.8, 0.4, 0.6);
        glUniform3f(lightPosition_uniform, -20, 30, -50);
        glUniform3f(lightColor_uniform, 1, 1, 1);
        glUniform3f(eyeNormal_uniform, 30, -20, -50);

        // glDrawArrays(GL_TRIANGLES, 0, 6*2*3);
        glDrawArrays(GL_TRIANGLES, 0, 6 * SAMPLES * SAMPLES);

        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        glfwSwapBuffers(window);
    }

    // Cleanup
    cleanup(window);

    return 0;
}

void createCubeObject(unsigned int &program, unsigned int &cube_VAO)
{
    glUseProgram(program);

    //Bind shader variables
    int vVertex_attrib = glGetAttribLocation(program, "vVertex");
    if(vVertex_attrib == -1) {
        fprintf(stderr, "Could not bind location: vVertex\n");
        exit(0);
    }

    //Cube data
    GLfloat cube_vertices[] = {10, 10, -10, -10, 10, -10, -10, -10, -10, 10, -10, -10, //Front
                   10, 10, 10, -10, 10, 10, -10, -10, 10, 10, -10, 10}; //Back
    GLushort cube_indices[] = {
                0, 1, 2, 0, 2, 3, //Front
                4, 7, 5, 5, 7, 6, //Back
                1, 6, 2, 1, 5, 6, //Left
                0, 3, 4, 4, 7, 3, //Right
                0, 4, 1, 4, 5, 1, //Top
                2, 6, 3, 3, 6, 7 //Bottom
                };

    //Generate VAO object
    glGenVertexArrays(1, &cube_VAO);
    glBindVertexArray(cube_VAO);

    //Create VBOs for the VAO
    //Position information (data + format)
    int nVertices = (6*2)*3; //(6 faces) * (2 triangles each) * (3 vertices each)
    GLfloat *shape_vertices = new GLfloat[nVertices*3];
    for(int i=0; i<nVertices; i++) {
        shape_vertices[i*3] = cube_vertices[cube_indices[i]*3];
        shape_vertices[i*3 + 1] = cube_vertices[cube_indices[i]*3+1];
        shape_vertices[i*3 + 2] = cube_vertices[cube_indices[i]*3+2];
    }
    GLuint vertex_VBO;
    glGenBuffers(1, &vertex_VBO);
    glBindBuffer(GL_ARRAY_BUFFER, vertex_VBO);
    glBufferData(GL_ARRAY_BUFFER, nVertices*3*sizeof(GLfloat), shape_vertices, GL_STATIC_DRAW);
    glEnableVertexAttribArray(vVertex_attrib);
    glVertexAttribPointer(vVertex_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
    delete []shape_vertices;

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0); //Unbind the VAO to disable changes outside this function.
}

// returns coordinates of point for given parameter angles phi, theta
void getCoordinates(float& x, float& y, float& z, float phi, float theta) {
	x = RADIUS * sin(phi) * cos(theta);
	y = RADIUS * sin(phi) * sin(theta);
	z = RADIUS * cos(phi);
}

// returns normal at point for given parameter angles phi, theta
void getNormal(float& xn, float& yn, float& zn, float phi, float theta) {
    xn = sin(phi) * cos(theta);
    yn = sin(phi) * sin(theta);
    zn = cos(phi);
}

// sets up a sphere object
void createSphereObject(unsigned int &program, unsigned int &sphere_VAO)
{
    glUseProgram(program);

    int vVertex_attrib = glGetAttribLocation(program, "vVertex");
    if(vVertex_attrib == -1) {
        fprintf(stderr, "Could not bind location: vVertex\n");
        exit(0);
    }

    int vNormal_attrib = glGetAttribLocation(program, "vNormal");
    if(vNormal_attrib == -1) {
        std::cout << "Could not bind location: vNormal\n" ;
    }

    // s1 = sampling rate of vertices
    int s1 = SAMPLES, s2 = SAMPLES * SAMPLES;

    // finding vertices and normals of sphere by varying angle paramters phi, theta
    GLfloat sphere_vertices[3 * s2];
	GLfloat sphere_normals[3 * s2];

    // input parameters to get different vertices, normals
    float phi = 0, theta = 0;
	float x, y, z, xn, yn, zn;
	
	int ind = 0;
	for (int i = 0; i < s1; i++) {
		for (int j = 0; j < s1; j++) {
			getCoordinates(x, y, z, phi, theta);
			sphere_vertices[ind] = x;
			sphere_vertices[ind+1] = y;
			sphere_vertices[ind+2] = z;

            getNormal(xn, yn, zn, phi, theta);
            sphere_normals[ind] = xn;
            sphere_normals[ind+1] = yn;
            sphere_normals[ind+2] = zn;

			theta += (360 / s1) * RADIAN_PER_DEGREE;
            ind += 3;
		}
		phi += (180 / s1) * RADIAN_PER_DEGREE;
	}

    // storing indices of vertex in order of drawing using triangular primitives
    GLushort vertex_indices[6 * s2];
    ind = 0;
	for (int i = 0; i < s2; i += s1) {
		for (int j = 0; j < s1; j++) {
			vertex_indices[ind++] = i + j;
			vertex_indices[ind++] = (i+s1) % s2 + j;
			vertex_indices[ind++] = (i+s1) % s2 + (j+1) % s1;
			vertex_indices[ind++] = i + (j+1) % s1;
			vertex_indices[ind++] = i + j;
			vertex_indices[ind++] = (i+s1) % s2 + (j+1) % s1;
		}
	}

    // creating expanded vertex, normal arrays as per above defined order
    int nVertices = 6 * s2; 
    GLfloat* shape_vertices = new GLfloat[nVertices * 3];
    GLfloat* vertex_normals = new GLfloat[nVertices * 3];

    for (int i = 0; i < nVertices; i++) {
        shape_vertices[i*3] = sphere_vertices[vertex_indices[i]*3];
        shape_vertices[i*3 + 1] = sphere_vertices[vertex_indices[i]*3 + 1];
        shape_vertices[i*3 + 2] = sphere_vertices[vertex_indices[i]*3 + 2];
        vertex_normals[i*3] = sphere_normals[vertex_indices[i]*3];
        vertex_normals[i*3 + 1] = sphere_normals[vertex_indices[i]*3 + 1];
        vertex_normals[i*3 + 2] = sphere_normals[vertex_indices[i]*3 + 2];
    }

    glGenVertexArrays(1, &sphere_VAO);
    glBindVertexArray(sphere_VAO);
    
    // passing expanded vertex array data
    GLuint vertex_VBO;
    glGenBuffers(1, &vertex_VBO);
    glBindBuffer(GL_ARRAY_BUFFER, vertex_VBO);
    glBufferData(GL_ARRAY_BUFFER, nVertices * 3 * sizeof(GLfloat), shape_vertices, GL_STATIC_DRAW);
    glEnableVertexAttribArray(vVertex_attrib);
    glVertexAttribPointer(vVertex_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
    delete[] shape_vertices;

    // passing expanded normal array data
    GLuint normal_VBO;
    glGenBuffers(1, &normal_VBO);
    glBindBuffer(GL_ARRAY_BUFFER, normal_VBO);
    glBufferData(GL_ARRAY_BUFFER, nVertices * 3 * sizeof(GLfloat), vertex_normals, GL_STATIC_DRAW);
    glEnableVertexAttribArray(vNormal_attrib);
    glVertexAttribPointer(vNormal_attrib, 3, GL_FLOAT, GL_FALSE, 0, 0);
    delete []vertex_normals;

    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0); 
}

void setupModelTransformation(unsigned int &program)
{
    //Modelling transformations (Model -> World coordinates)
    modelT = glm::translate(glm::mat4(1.0f), glm::vec3(0.0, 0.0, 0.0));//Model coordinates are the world coordinates

    //Pass on the modelling matrix to the vertex shader
    glUseProgram(program);
    vModel_uniform = glGetUniformLocation(program, "vModel");
    if(vModel_uniform == -1){
        fprintf(stderr, "Could not bind location: vModel\n");
        exit(0);
    }
    glUniformMatrix4fv(vModel_uniform, 1, GL_FALSE, glm::value_ptr(modelT));
}

void setupViewTransformation(unsigned int &program)
{
    //Viewing transformations (World -> Camera coordinates
    //Camera at (0, 0, 100) looking down the negative Z-axis in a right handed coordinate system
    viewT = glm::lookAt(glm::vec3(40.0, -40.0, 40.0), glm::vec3(0.0, 0.0, 0.0), glm::vec3(0.0, 1.0, 0.0));

    //Pass-on the viewing matrix to the vertex shader
    glUseProgram(program);
    vView_uniform = glGetUniformLocation(program, "vView");
    if(vView_uniform == -1){
        fprintf(stderr, "Could not bind location: vView\n");
        exit(0);
    }
    glUniformMatrix4fv(vView_uniform, 1, GL_FALSE, glm::value_ptr(viewT));
}

void setupProjectionTransformation(unsigned int &program)
{
    //Projection transformation
    projectionT = glm::perspective(45.0f, (GLfloat)screen_width/(GLfloat)screen_height, 0.1f, 1000.0f);

    //Pass on the projection matrix to the vertex shader
    glUseProgram(program);
    vProjection_uniform = glGetUniformLocation(program, "vProjection");
    if(vProjection_uniform == -1){
        fprintf(stderr, "Could not bind location: vProjection\n");
        exit(0);
    }
    glUniformMatrix4fv(vProjection_uniform, 1, GL_FALSE, glm::value_ptr(projectionT));
}

glm::vec3 getTrackBallVector(double x, double y)
{
	glm::vec3 p = glm::vec3(2.0*x/screen_width - 1.0, 2.0*y/screen_height - 1.0, 0.0); //Normalize to [-1, +1]
	p.y = -p.y; //Invert Y since screen coordinate and OpenGL coordinates have different Y directions.

	float mag2 = p.x*p.x + p.y*p.y;
	if(mag2 <= 1.0f)
		p.z = sqrtf(1.0f - mag2);
	else
		p = glm::normalize(p); //Nearest point, close to the sides of the trackball
	return p;
}

