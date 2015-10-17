/*

 Description : The relationship between statements and expressions
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void) {
	puts("Statements and expressions:");
	puts("---------------------------");

	puts("These are simple statements without output:");
	int a = 6;
	int b = 3;
	int c = a + b;
	int j = 0;
	++j;
/*
	puts("---------------------------");
	puts("This is a compound statement:");

	  double radius = 5.5;
	  double circumference = 2. * M_PI * radius;
	  double area = M_PI * radius * radius;
	  printf("The area is: %f \n",area);
	  printf("The circumference is: %f \n",circumference);
*/
	return EXIT_SUCCESS;
}
