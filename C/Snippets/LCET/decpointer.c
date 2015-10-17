/*

 Description : Declaring and initializing a pointer, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	//Declarations
	int size = 15;		//a variable
	int *pointerInt;		//a pointer variable

	//Assign the address of the variable to the pointer
	pointerInt = &size;

	return EXIT_SUCCESS;
}
