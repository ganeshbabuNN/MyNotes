/*

 Description : Declaring and using the Boolean type, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// stdbool.h is part of the C99 standard
// it defines a bool type as true=1 and false=0

//An alternative is to manually define a new type:
typedef int Bool;
#define True 1
#define False 0

int main(void) {

	Bool aBooleanVariable;
	aBooleanVariable = True;
	printf("The value of aBooleanVariable is %d\n",aBooleanVariable);
	//bool anotherBooleanVariable;

	return EXIT_SUCCESS;
}
