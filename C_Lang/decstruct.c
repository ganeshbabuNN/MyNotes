/*

 Description : Declaring and accessing structures, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Constants
#define MAX_NAME  30
#define MAX_COLOR 15

//Globally defined struct
struct person{			//5 fields packed into one type
		char firstName[MAX_NAME];
		char lastName[MAX_NAME];
		int age;
		char eyeColor[MAX_COLOR];
		float height;
	};

//Function prototypes
void printStructure(struct person individual);

int main(void) {

	//citizen is a variable of type person
	struct person citizen;
	citizen.age = 38;
	citizen.height = 5.9;
	strcpy(citizen.lastName,"Johnson");
	strcpy(citizen.firstName,"Sasha");
	strcpy(citizen.eyeColor,"Green");

	printStructure(citizen);  //Pass the entire structure to the function as one argument

	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
void printStructure(struct person individual){
	printf("First name: %s\n",individual.firstName);
	printf("Last name: %s\n",individual.lastName);
	printf("Age: %d\n",individual.age);
	printf("Height: %.1f\n",individual.height);
	printf("Eye color: %s\n",individual.eyeColor);
}
