#include "world.h"
using namespace std;

#define DEPTH_LIMIT 5
#define ETA_AIR 1
#define ETA 1.35

float World::firstIntersection(Ray& ray) {
	for (int i = 0; i < objectList.size(); i++)
		objectList[i]->intersect(ray);
	return ray.getParameter();
}

// returns direction of refracted ray based on incoming direction, normal and refractive index
Vector3D getRefractDir(Vector3D inDir, Vector3D normal, double refractInd) {
    Vector3D dir = ((inDir - dotProduct(inDir, normal) * normal) / refractInd) - (normal * sqrt(1 - ((1 - pow(dotProduct(inDir, normal), 2)) / pow(refractInd, 2))));
	dir.normalize();
	return dir;
}

Color World::shade_ray(Ray& ray, int depth)
{
	firstIntersection(ray);
	if(ray.didHit()) {
		const Object* obj = ray.intersected();
		
		// recursion limit not reached, tracing the ray further
		if (depth < DEPTH_LIMIT) {
			Vector3D inDir = ray.getDirection();
			inDir.normalize();
			Vector3D normal = ray.getNormal(); 
			normal.normalize();
			
			// create a reflection ray
			Vector3D reflectDir = inDir - 2 * dotProduct(inDir, normal) * normal;
			reflectDir.normalize();
			Ray reflectionRay(ray.getPosition(), reflectDir);

			if (obj->isSolid) {
				return obj->shade(ray) + Color(0.3) * shade_ray(reflectionRay, depth+1);
			} 
			else {
				if (dotProduct(inDir, normal) < 0) {
					// entering dielectric
					// create a refraction ray
					Vector3D refractDir = getRefractDir(inDir, normal, ETA);
					Ray refractionRay(ray.getPosition(), refractDir);

					double cosTheta = -1 * dotProduct(inDir, normal);
					Color k = Color(1.0);

					// applying schlick's approximation
					double r0 = pow((ETA - 1), 2) / pow((ETA + 1.), 2);
                    double rTheta = r0 + (1 - r0) * pow((1 - cosTheta), 5);
                    return k * (1 - rTheta) * shade_ray(refractionRay, depth+1) + k * rTheta * shade_ray(reflectionRay, depth+1);
				}
				else {
					// exiting dielectric
					// applying beer's law
					double absorptionRate = 0.03;
					double dist = ray.getParameter() * ray.getDirection().length();
					Color k = Color(exp(-1 * absorptionRate * dist));

					double value = 1 - (pow(ETA_AIR, 2) * (1 - pow(dotProduct(inDir, -1*normal), 2))) / pow(1.0/ETA, 2);
					if (value < 0) {
						// total internel reflection takes place
						return k * shade_ray(reflectionRay, depth+1);
					}
					else {
						// create a refraction ray
						Vector3D refractDir = getRefractDir(inDir, -1 * normal, 1.0 / ETA);
						Ray refractionRay(ray.getPosition(), refractDir);

                        double cosTheta = dotProduct(refractDir, normal);
                        
						// applying schlick's approximation
						double r0 = pow((ETA - 1), 2) / pow((ETA + 1), 2);
						double rTheta = r0 + (1 - r0) * pow((1 - cosTheta), 5);
                        return k * (1 - rTheta) * shade_ray(refractionRay, depth+1) + k * rTheta * shade_ray(reflectionRay, depth+1);
					}
				}
			}
		}
		else return obj->shade(ray);
	}
	else return background;
}
