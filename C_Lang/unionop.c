/*

 Description : Understanding and performing union operations, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {

	//----- EXAMPLE 1 -----
	union symbol{
		int number;
		char letter;
	};

	union symbol value;
	value.number = 25;
	value.letter = 'm';

	union symbol *ptr; 	//pointer to union
	ptr = &value;
	char myLetter = ptr->letter;

	printf("Letter field: %c\n", myLetter);

	return EXIT_SUCCESS;
}
