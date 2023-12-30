#version 330 core

in vec3 n;
in vec3 e;
in vec3 l;

uniform vec3 vColor;
uniform vec3 lightColor;

out vec4 outColor;

void main() {
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
	vec3 fColor = Ia + Id + Is;

	// fColor = vColor; //Interpolate color

    outColor = vec4(fColor, 1.0);
}