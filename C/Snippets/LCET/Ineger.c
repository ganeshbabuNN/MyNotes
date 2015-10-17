/*

 Description : Displays sizes of integer data types
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	puts("Memory size of each type");
	puts("------------------------\n");
	// Sizes of integer types
	printf("Storage size for char :           %lu  byte\n", sizeof(char));
	printf("Storage size for unsigned char :  %lu  bytes\n", sizeof(unsigned char));
	printf("Storage size for signed char :    %lu  bytes \n", sizeof(signed char));
	printf("Storage size for int :            %lu  bytes \n", sizeof(int));
	printf("Storage size for unsigned int :   %lu  bytes \n", sizeof(unsigned int));
	printf("Storage size for short :          %lu  bytes \n", sizeof(short));
	printf("Storage size for unsigned short : %lu  bytes \n", sizeof(unsigned short));
	printf("Storage size for long :           %lu  bytes \n", sizeof(long));
	printf("Storage size for unsigned long :  %lu  bytes \n", sizeof(unsigned long));

	// Size of void type
	printf("Storage size for void :           %lu  byte\n", sizeof(void));

	// Boolean types
	// ... do not really exist, but there are workarounds
	return 0;
}
