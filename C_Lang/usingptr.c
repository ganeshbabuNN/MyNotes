/*

 Description : Using structures as complex variables, Ansi-style
 ============================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

//Constants
#define MAX_NAME_LENGTH  10  // Maximum name length
#define MAX_COLOR        10  // Maximum color length
#define MAX_TEAMS        10
#define MAX_NAMES        14
#define MAX_COLORS        4
#define MAX_AGE			120

//Global definitions
struct person{
		char firstName[MAX_NAME_LENGTH];
		char lastName[MAX_NAME_LENGTH];
		int age;
		char eyeColor[MAX_COLOR];
		float height;
	};

// A "bank" of data to be used to populate arrays
char bankOfFirstNames[MAX_NAMES][MAX_NAME_LENGTH] = {"Alex","Angela","Sonya","Eric","Robert","Svetlana","Carl","Sujit","Niejls","Janet","Isac","Emily","Terik","Nevin"};
char bankOfLastNames[MAX_NAMES][MAX_NAME_LENGTH] = {"Borisov", "Johnson","Ben-Haim","Kourakis","Elfasi","Newton","Gorbachev","Marinescu","Voltaire","Albertson","Lee","Chin","Kraft","Roitman"};
char bankOfEyeColors[MAX_COLORS][MAX_COLOR] = {"Blue","Black","Green","Brown"};

struct person teams[MAX_TEAMS];  //array of 10 persons

//Function prototypes
void printStructure(void);
void populateArrayOfStructs(void);

int main(void) {

	populateArrayOfStructs();
	printStructure();

	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
void populateArrayOfStructs(void){
		srand(time(NULL));   // Seed the random number generator with current time

		// Populate the team array with random values from the bank of data
		for(int i=0; i<MAX_TEAMS; i++){
			int rF = rand() % MAX_NAMES;  // choose a random position for the array of first names
			int rL = rand() % MAX_NAMES;  // choose a random position for the array of last names
			int rC = rand() % MAX_COLORS;   // choose a random position for the array of eye colors
			strcpy(teams[i].firstName,bankOfFirstNames[rF]);
			strcpy(teams[i].lastName,bankOfLastNames[rL]);
			strcpy(teams[i].eyeColor,bankOfEyeColors[rC]);
			teams[i].age = rand() % MAX_AGE;
			teams[i].height = 4.0 + rand() % 3 + (rand() % 10)/10.0;  // choose random feet and inches
		}
}

void printStructure(void){
	// Print a nicely formatted table
	for(int i=0; i<MAX_TEAMS; i++){
	printf("First name:[%8s] ",teams[i].firstName);
	printf("Last name:[%9s] ",teams[i].lastName);
	printf("Age:[%3d] ",teams[i].age);
	printf("Height:[%4.1f] ",teams[i].height);
	printf("Eye color:[%5s]\n",teams[i].eyeColor);
	}
}
