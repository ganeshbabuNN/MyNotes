/*

 Description : Solution to challenge 10_08, Ansi-style
 ============================================================================
 */

//Function prototypes
void showBarChart(void);
void showOneBar(int barLength);

#include <time.h>
#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE 10

//Function prototypes
void showBarChart(void);
void showOneBar(int barLength);
void setDataValues(void);

int dataSet[DATA_SIZE];

int main(void) {
	setDataValues();
	showBarChart();
	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
void setDataValues(void){
	/*
	 * Generates a set of random data points between 0 and 49
	 * and populates the dataSet array
	 */
	srand(time(NULL));
	for(int i=0; i<DATA_SIZE; i++){
		dataSet[i] = rand() % 50;  //random integers between 0 and 49
	}
}

void showBarChart(void){
	/*
	 * Loops through the dataSet array, reads each data point
	 * and calls the showOneBar function with that value
	 */
	for(int i=0; i<DATA_SIZE; i++){
		showOneBar(dataSet[i]);
	}
}

void showOneBar(int barLength){
	/*
	 * Creates one horizontal bar, equivalent in length
	 * to the barLength parameter
	 */
	printf("%3d:",barLength);
	for(int i=0; i<barLength; i++){
		putchar('¥');
	}
	putchar('\n');
}
