/*

 Description : The switch statement, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void processColor(char c);
void checkTrafficLight(void);
void stopDriving(void);
void getReady(void);
void startDriving(void);
void trafficLightMalfunction(void);

int main(void) {
	checkTrafficLight();
	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----

void checkTrafficLight(void){
	printf ("What color does the traffic light show?\n");
	printf("  r=red\n  y=yellow\n  g=green\n\n  Choice:");
	char color;
	color = getchar();
	processColor(color);
}

void processColor(char color){
	/*
	 * This is a more elegant way than using nested if-else statements
	 */
	switch(color){
	case 'r':
		stopDriving();
		break;
	case 'y':
		getReady();
		break;
	case 'g':
		startDriving();
		break;
	default:
		trafficLightMalfunction();
	}
}

void stopDriving(){
	printf("You must stop the car now\n");
}

void getReady(){
	printf("Shift the gear into D but keep pressing the brake pedal\n");
}

void startDriving(){
	printf("Press the gas pedal, release the brakes, and proceed with caution\n");
}

void trafficLightMalfunction(void){
	printf("This is an unrecognized color. Is there a malfunction?\n");
}
