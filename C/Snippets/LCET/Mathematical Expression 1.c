/*

 Description : Implementation of mathematical expressions - Interactive
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void) {

	float a,b,c;

	puts("Mathematical expressions:");
	//Find the two real roots of a quadratic equation
	//  2
	//aX + bX + c = 0

	printf("Enter a:");
	scanf("%f",&a);

	printf("Enter b:");
	scanf("%f",&b);

	printf("Enter c:");
	scanf("%f",&c);

	float discriminant = sqrt(b*b - 4*a*c);

	float root1 = (-b + discriminant)/(4*a);
	float root2 = (-b - discriminant)/(4*a);

	printf("Root 1: %f\n",root1);
	printf("Root 2: %f\n",root2);

	return EXIT_SUCCESS;
}

