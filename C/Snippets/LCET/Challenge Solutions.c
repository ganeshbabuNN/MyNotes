/*

 Description : Solution to challenge 06_08
 	 	 	   Centimeters to feet & inches conversion
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	double centimeters;
	double inches;
	int feet;

	printf("Enter your height in cm: ");
	scanf("%lf",&centimeters);
	inches = centimeters / 2.54;
	feet = inches / 12;
	double delta = inches - (feet * 12);
	printf("I estimate your height to be %d feet and %.1f inches\n", feet, delta);

	return EXIT_SUCCESS;
}
