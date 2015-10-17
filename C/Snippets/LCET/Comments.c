/*

 Description : Adding comments to code for clarity, Ansi-style
 ============================================================================
 */

/*
 * This program solves the problem of ... etc.
 * The main idea implemented in here consists of... etc.
 * The comments below are generic and are meant to illustrate
 * what and where to explain
 *
 */

//External libraries
#include <stdio.h>
#include <stdlib.h>

//Special constants
#define UPPER_BOUNDARY 100.12	//The highest permissible temperature in Celsius degrees
#define LOWER_BOUNDARY -12.34	//The lowest permissible temperature in Celsius degrees
#define FREEZING_POINT 32 		//degrees Fahrenheit

int main(void) {

	int counter = 0;	//This is used to count the number of times certain tasks are performed
	char roles[10];		//This string will be assigned value at runtime; the values can be: admin, contributor, viewer
	return EXIT_SUCCESS;
}

//CUSTOM FUNCTION DEFINITIONS

void readData(){
/*
 * This function reads the initial data this program needs to process
 * More detailed description should follow... as needed...
 */
}

void processData(){
/*
 * This function process the data assumed to have been read by this program
 * More detailed description should follow... as needed...
 */
}

void printReport(){
/*
 * This function prints the weekly usage report as required by company regulations
 * More detailed description should follow... as needed...
 */
}
