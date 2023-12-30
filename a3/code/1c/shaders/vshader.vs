#version 330 core

in vec3 vVertex;
in vec3 vNormal;

uniform mat4 vModel;
uniform mat4 vView;
uniform mat4 vProjection;
uniform vec3 vColor;
uniform vec3 lightPosition;
uniform vec3 lightColor;
uniform vec3 eyeNormal;

out vec3 fColor;

void main() {
	gl_Position = vProjection * vView * vModel * vec4(vVertex, 1.0);
	
	vec3 n = normalize(vNormal);

	// vector from vertex to light position
	vec3 l = normalize(lightPosition - vVertex);

	// vector towards observer's eye (for specular light)
	vec3 e = eyeNormal;

	// setting incoming light color values using uniform variables
	vec3 La = vColor;
	vec3 Ld = vColor;
	vec3 Ls = lightColor;

    vec3 ks = vec3(0.8, 0.8, 0.8);
    vec3 kd = vec3(0.5, 0.6, 0.4);
    vec3 ka = vec3(1.0, 1.0, 1.0);

	float spec_exp = 32;

	// ambient light
	vec3 Ia = ka * La;

	// diffuse light
	vec3 Id = kd * max(dot(l, n) * Ld, 0.0);
	
	// specular light
	vec3 Is = ks * Ls * pow(max(dot(n, normalize(e+l)), 0.0), spec_exp);

	// overall fragment color
	fColor = Ia + Id + Is;

	// fColor = vColor; //Interpolate color
}
