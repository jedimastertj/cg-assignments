#include "world.h"
#include "material.h"
#include "math.h"

Color mul(double val, Color col) {
	return Color(val * col.r, val * col.g, val * col.b);
}

Color Material::shade(const Ray& incident, const bool isSolid) const
{
	Vector3D v = -1 * incident.getDirection();
	v.normalize();	
	Vector3D point = incident.getPosition(), normal = incident.getNormal(); 
	normal.normalize();

	Color Ld = color;
	Color La = color;
	// ambient component
	Color computedColor = mul(ka, La);
	
	for (LightSource* light: world->getLightSources()) {
		Color Ls = light->getIntensity();
		Vector3D l = light->getPosition() - point;
		l.normalize();
		
		Vector3D h = v + l;
		h.normalize();
		
		if (dotProduct(normal, l) > 0.0) {
			// diffuse component
			computedColor = computedColor + mul(kd * dotProduct(normal, l), Ld);
		}
		if (dotProduct(normal, h) > 0.0) {
			// specular component
			computedColor = computedColor + mul(ks * pow(dotProduct(normal, h), n), Ls);
		}
	}
	// return overall color
	return computedColor;
}
