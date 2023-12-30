#version 330 core
#define RADIAN_PER_DEGREE 0.0174532

in vec3 n;
in vec3 e;
in vec3 l;

uniform vec3 vColor;
uniform vec3 lightColor;
uniform vec3 lightDirection;
uniform float lightCutoffAngle;

out vec4 outColor;

void main() {
	// setting incoming light color values using uniform variables
	vec3 La = vColor;
	vec3 Ld = vColor;
	vec3 Ls = lightColor;

	vec3 ks = vec3(1.0, 1.0, 1.0);
	vec3 kd = vec3(0.5, 0.6, 0.4);
    vec3 ka = vec3(0.8, 0.8, 0.8);

	float spec_exp = 32;

	// ambient light
	vec3 Ia = ka * La;

	// diffuse light
	vec3 Id = kd * max(dot(l, n) * Ld, 0.0);

	// specular light
	vec3 Is = ks * Ls * pow(max(dot(n, normalize(e+l)), 0.0), spec_exp);

	float innerCutoffAngle = lightCutoffAngle;
	float outerCutoffAngle = innerCutoffAngle + (10 * RADIAN_PER_DEGREE);

	// gives cos of angle formed between light direction vector and light to fragment vector
	float spotlightFactor = dot(normalize(lightDirection), l * -1.0f);

	// overall fragment color
	vec3 fColor;

	// if angle between light direction and light to fragment is larger than "outer" cutoff angle,
	// its cosine will be smaller than cosine of "outer" cutoff angle

	if (spotlightFactor < cos(outerCutoffAngle)) {
		// fragment outside the spotlight cone
		fColor = vec3(0, 0, 0);
	} 
	else {
		float interpolateFactor; // used to make intensity transition smooth - soft edges
		if (spotlightFactor >= cos(innerCutoffAngle)) {
			// fragment inside inner cutoff
			interpolateFactor = 1;
		} 
		else {
			// fragment between inner and outer cutoff
			float phi = acos(spotlightFactor);
			interpolateFactor = 1 - (phi - innerCutoffAngle)/(outerCutoffAngle - innerCutoffAngle);
		}
		fColor = (Ia + Id + Is) * interpolateFactor;
	}

    outColor = vec4(fColor, 1.0);
}