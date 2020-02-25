/*

 Description : Implementation of mathematical expressions
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.14159

int main(void) {
	puts("Mathematical expressions:");
	puts("-------------------------");

	//Find the area of a circle

	float radius = 5.0;
	float area;

    //             2
	//A = PI*Radius
	area = PI*radius*radius;
	printf("A circle with radius %f has area: %f\n",radius,area);

	puts("----------- Solving a quadratic equation -----------------");

	//Find the two real roots of a quadratic equation
	//  2
	//aX + bX + c = 0

	float a = 2;
	float b = 7;
	float c = 4;
	float discriminant = sqrt(b*b - 4*a*c); //Note that the value must be positive or an error will occur
	float root1 = (-b + discriminant)/(4*a);
	float root2 = (-b - discriminant)/(4*a);

	printf("Root 1: %f\n",root1);
	printf("Root 2: %f\n",root2);

	puts("----------- The volume of a cylinder----------------------");

	//Find the volume V of a cylinder given the radius of the base R
	//and the height h.
	//          2
	//V = PI * R * h

	float R = 12.375;
	float h = 10.03;
	float Volume = PI * R * R * h;
	printf("The volume is: %f",Volume);

	return EXIT_SUCCESS;
}
