//object.h
#ifndef _OBJECT_H_
#define _OBJECT_H_

#include "ray.h"
#include "vector3D.h"
#include "color.h"
#include "material.h"

class Object
{
protected:
	Material *material;
	bool isSolid;
public:
	Object(Material *mat): material(mat) {}	
	virtual bool intersect(Ray& ray) const = 0;
	virtual Color shade(const Ray& ray) const
	{
		return material->shade(ray, isSolid);
	}
	virtual Vector3D getNormal(Ray& ray) const = 0;
};

#endif
