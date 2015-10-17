/*
 Description : Returning data from functions, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Globals
double temperature;  // Deliberately not initialized

//Function prototypes
void measure(void);
int func(void);
void funcByRef(int *i, int *j);

int main(void) {

	int n = func();
	printf("After func(), n=%d\n",n);

	measure();
	printf("After measure()  temperature=%.1lf\n", temperature);

	int a,b;   // Deliberately not initialized
	funcByRef (&a, &b);
	printf("After funcByRef(), a=%d  b=%d\n",a,b);
	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----

int func(void){
	// This function simply returns a value
	int value = 12;
	return value;
}

void measure(void){
	// This function modifies a global variable
		temperature = 50.2;
}

void funcByRef(int *i, int *j){
	// This function modifies values passed
	// to its parameters by reference
	*i = 5;
	*j = 7;
}
