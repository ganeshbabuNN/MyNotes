/*

 Description : Facilitate decision making with if-else statements, Ansi-style
 	 	 	  This is an improved version of exercise 08_01. It demonstrates
 	 	 	  a slightly different approach to using if-statements.
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
int getNumber(void);
void tooSmall(void);
void tooLarge(void);
void justRight(void);
void checkError(int num);

int main(void) {
	int num = getNumber();

	/*
	 * There are multiple ways to implement the logic
	 * in this program. This is just a suggested one.
	 */
	if((num >= 0) && (num <= 100))
		justRight();
	else
		checkError(num);

	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
int getNumber(void){
	int num;
	printf("Enter a number between 0 and 100:");
	scanf("%d",&num);
	return num;
}

void checkError(int num){
	if(num < 0)
		tooSmall();
	else
		tooLarge();
}

void tooSmall(void){
	printf("The number is too small.\n");
}

void tooLarge(void){
	printf("The number is too large.\n");
}

void justRight(void){
	printf("The number is within the correct range\n");
}

