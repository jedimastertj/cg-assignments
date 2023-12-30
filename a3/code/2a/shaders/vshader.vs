#version 330 core

in vec3 vVertex;
in vec3 vNormal;

uniform mat4 vModel;
uniform mat4 vView;
uniform mat4 vProjection;
uniform vec3 lightPosition;
uniform vec3 eyeNormal;

out vec3 n;
out vec3 e;
out vec3 l;

void main() {
	gl_Position = vProjection * vView * vModel * vec4(vVertex, 1.0);
	
	n = normalize(vNormal);

	// vector from vertex to light position 
	l = normalize(lightPosition - vVertex);
	
	// vector towards observer's eye (for specular light)
	e = eyeNormal;
}
