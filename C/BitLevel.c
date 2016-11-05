/*

 Description : Bit-level calculations and bitwise operations

				&	and
				|	or
				^	xor
				~	oneÕs complement
				>> 	right shift
				<< 	left shift
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	puts("Bit-level calculations:");
	puts("_______________________");


	unsigned int x = 10;
	unsigned int y = 1;
	unsigned int result;

	result = x & y;
	printf("x & y = %d\n",result);

	result = x | y;
	printf("x | y = %d\n",result);

	result = x ^ y;
	printf("x ^ y = %d\n",result);

	// Right-shift 1 is equivalent to dividing by 2
	// See note on binary arithmetic
	result = x >> 1;
	printf("x >> 1 = %d\n",result);

	// Left-shift 1 is equivalent to multiplying by 2
	// See note on binary arithmetic
	result = y << 1;
	printf("y << 1 = %d\n",result);

	return EXIT_SUCCESS;
}
