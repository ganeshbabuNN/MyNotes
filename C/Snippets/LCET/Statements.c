/*

 Description : Using statements and expressions, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {

	int days = 12 + 5 + 4;
	double width = 12.67;
	double height = 10.8;
	double perimeter = width + width + height + height;

	printf("days: %d \n",days);
	printf("perimeter: %f",perimeter);

	return EXIT_SUCCESS;
}
