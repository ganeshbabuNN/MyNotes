/*
 Description : Implement alternative decision blocks with if-else-if statements, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void checkTrafficLight(void);
void processColor(char c);

int main(void) {
	checkTrafficLight();
	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----

void checkTrafficLight(void){
	printf ("What color does the traffic light show (r=red,y=yellow,g=green)\n");
	char color;
	scanf("%c",&color);
	processColor(color);
}

void processColor(char c){
	/*
	 * This is just one of MANY possibilities for implementing
	 * the logic in this section,
	 */
	if(c=='r')
		printf("The traffic light is RED\n");
	else
		if (c == 'y')
			printf("The traffic light is YELLOW");
		else
			if (c == 'g')
				printf("The traffic light is GREEN");
			else
				printf("You entered an unrecognized color. Try again.\n");
}
