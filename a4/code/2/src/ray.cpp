#include "ray.h"
#include "object.h"

bool Ray::setParameter(const float par, const Object *obj)
{
	if (par < t && par > SMALLEST_DIST)
	{
		hit = true;
		t = par;
		object = obj;
		normal = obj->getNormal(*this);
		return true;
	}
	return false;
}
