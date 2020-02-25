/*

 Description : Using conditional directives, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include "myHeaders1503.h"

#undef MAX_PRICE
#define MAX_PRICE 100

#ifndef THRESHOLD
	#define THRESHOLD 23.751
#endif

#define greet(name) \
	printf("Thank you for shopping here, " #name "\n")

int main(void) {

	printf("MAX_PRICE = %d\n", MAX_PRICE);
	printf("THRESHOLD = %f\n", THRESHOLD);

	greet(Isac);

	// predefined macros in C
	printf("File :%s\n", __FILE__);
	printf("Date :%s\n", __DATE__);
	printf("Time :%s\n", __TIME__);
	printf("Line :%d\n", __LINE__);
	printf("ANSI :%d\n", __STDC__);
	return EXIT_SUCCESS;
}
