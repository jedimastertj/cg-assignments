#ifndef _TRIANGLE_H_
#define _TRIANGLE_H_

#include "object.h"
#include "ray.h"
#include "vector3D.h"
#include "color.h"

class Triangle : public Object
{
private:
	Vector3D vertexA;
	Vector3D vertexB;
    Vector3D vertexC;

public:
	Triangle(const Vector3D& vertA, const Vector3D& vertB, const Vector3D& vertC, Material* mat):
		Object(mat), vertexA(vertA), vertexB(vertB), vertexC(vertC)
	{
		isSolid = false;
	}
	
	virtual bool intersect(Ray& r) const;
	virtual Vector3D getNormal(Ray& ray) const;
};
#endif
