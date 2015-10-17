/*

 Description : The variable scope, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void changeNumber(int a);
void changeNumberDifferently(int a);

//Global variables
int a = 0;
int b = 0;
int c = 0;

int main(void) {
	printf("in main, a = %d\n", a);
	changeNumber(a);
	printf("in main, a = %d\n", a);

	changeNumberDifferently(a);
	printf("in main, a = %d\n", a);
	printf("in main, b = %d\n", b);
	printf("in main, c = %d\n", c);

	return EXIT_SUCCESS;
}

void changeNumber(int a){
	a = 5;
	printf("inside changeNumber, a = %d\n", a);
}

void changeNumberDifferently(int a){
	a = -1;
	b = 3;
	int c = -1;
	printf("inside changeNumberDifferently, a = %d\n", a);
	printf("inside changeNumberDifferently, b = %d\n", b);
	printf("inside changeNumberDifferently, c = %d\n", c);
}


