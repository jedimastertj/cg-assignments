#include "triangle.h"
#include <iostream>
#include <vector>
using namespace std;

// calculate determinant
double det3(vector<vector<double>>& mat) {
    double val = -1;
    if (mat.size() == 3 && mat[0].size() == 3) {
        val = 0;
        val += mat[0][0] * (mat[1][1]*mat[2][2] - mat[1][2]*mat[2][1]);
        val -= mat[0][1] * (mat[1][0]*mat[2][2] - mat[1][2]*mat[2][0]);
        val += mat[0][2] * (mat[1][0]*mat[2][1] - mat[1][1]*mat[2][0]);
    } 
    return val;
}

// set jth column of matrix
void setCol3(vector<vector<double>>& mat, const Vector3D& col, int j) {
    if (mat.size() == 3 && j < mat[0].size()) {
        mat[0][j] = col.e[0];
        mat[1][j] = col.e[1];
        mat[2][j] = col.e[2];
    }
}

// checks whether ray intersects with triangle
bool Triangle::intersect(Ray& r) const
{
    Vector3D rayDirection = r.getDirection();
    Vector3D rayOrigin = r.getOrigin();

    vector<vector<double>> mat(3, vector<double>(3, -1));
    setCol3(mat, vertexA - vertexB, 0);    
    setCol3(mat, vertexA - vertexC, 1);
    setCol3(mat, rayDirection, 2);
    double detA = det3(mat);

    setCol3(mat, vertexA - rayOrigin, 1);
    double gamma = det3(mat) / detA;

    setCol3(mat, vertexA - rayOrigin, 0);
    setCol3(mat, vertexA - vertexC, 1);
    double beta = det3(mat) / detA;

    setCol3(mat, vertexA - vertexB, 0);
    setCol3(mat, vertexA - rayOrigin, 2);
    double t = det3(mat) / detA;

    if (beta > 0 && gamma > 0 && (beta + gamma) < 1) {
        return r.setParameter(t, this);
    }
    return false;
}

// returns normal vector of triangle (same for all points)
Vector3D Triangle::getNormal(Ray& ray) const {
	Vector3D normal = crossProduct(vertexB - vertexA, vertexC - vertexA);
    normal.normalize();
    return normal;
}