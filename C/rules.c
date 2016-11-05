/*

 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	int list[5] = {23, 21, 15, 8, 16};
	int k = 0;
	list[k] += 2;
	k = 5;
	list[k] += 1; //error because 5 is outside the array

	printf("The 3rd element is %d \n\n",   list[2]);
	printf("The 6th element is %d \n\n",   list[5]); //does not exist
	printf("The 20th element is %d \n\n", list[19]); //the array length is 5 !!
	return EXIT_SUCCESS;
}
