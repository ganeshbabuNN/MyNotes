/*

 Description : Thriving for simplicity and clarity, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {

	double a=5, b=20, c=8;
	// Complicated code (subjective qualifier)
	double root1 = (-b + sqrt(pow(b,2)-4*a*c))/(2*a);
	double root2 = (-b - sqrt(pow(b,2)-4*a*c))/(2*a);
	printf("root1 = %lf\n",root1);
	printf("root2 = %lf\n",root2);

	// Simpler code (subjective qualifier) and safer
	double discriminant = pow(b,2) - 4*a*c;
	if((discriminant > 0) && (a != 0)){
		double numerator1 = -b + sqrt(discriminant);
		root1 = numerator1/(2*a);
		double numerator2 = -b - sqrt(discriminant);
		root2 = numerator2/(2*a);
	}

	printf("root1 = %lf\n",root1);
	printf("root2 = %lf\n",root2);
	return EXIT_SUCCESS;
}
