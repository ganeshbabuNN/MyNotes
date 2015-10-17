/*

 Description : Simple assignment statements, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {

	//C has a full-fledged calculator ability
	//and you can harness all the power of your computer

	//Variable declaration and initialization
	double originalPrice =	0.0;
	double tax =				0.0;
	double discount =		0.0;
	double specialPrice =	0.0;

	printf("Enter the original price:");
	scanf("%lf", &originalPrice);

	printf("Enter sales tax percentage:");
	scanf("%lf", &tax);

	printf("Enter discount percentage:");
	scanf("%lf", &discount);

	double afterTax = originalPrice*(1.0 + tax/100.0);
	double theDiscount = originalPrice*(discount/100.0);
	specialPrice = afterTax - theDiscount;

	printf("\nOur rules:\n 1. Tax is applied first.\n 2. Discount is applied to the original price\n\n");

	printf("The original price is:  $%.2lf\n",originalPrice);
	printf("The price after tax is: $%.2lf\n",afterTax);
	printf("The discount amount is:  $%.2lf\n",theDiscount);
	printf("Your special price is:  $%.2lf\n",specialPrice);

	return EXIT_SUCCESS;
}
