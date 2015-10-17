/*

 Description : Using a pointer variable, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	//Declarations
		int size = 15;
		int *ptr;
		ptr = &size;

	//Use the value at the address stored in the pointer
		printf("Address %x contains %d", ptr, *ptr);

	return EXIT_SUCCESS;
}
