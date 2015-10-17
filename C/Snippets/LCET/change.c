/*

 Description : Change the course of action with if-statements, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
int getNumber(void);
void tooSmall(void);
void tooLarge(void);
void justRight(void);

int main(void) {
	int num = getNumber();

	if(num < 0)
		tooSmall();

	if(num > 100)
		tooLarge();

	if((num >= 0) && (num <= 100))
		justRight();

	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
int getNumber(void){
	int num;
	printf("Enter a number between 0 and 100:");
	scanf("%d",&num);
	return num;
}

/*
 * The following 3 functions may seem unnecessary since they only
 * consist of a call to another (built-in) function. However, using
 * functions creates an opportunity to add more actions later. It
 * also provides an opportunity to make code more readable.
 */
void tooSmall(void){
	printf("The number is too small.\n");
}

void tooLarge(void){
	printf("The number is too large.\n");
}

void justRight(void){
	printf("The number is within the correct range\n");
}

