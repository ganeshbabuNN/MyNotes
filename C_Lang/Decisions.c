/*

 Description : Logical operators, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {

	//Declare variables used in the decision process
	int weather;
	int readiness;
	int supermarket;
	int minivan;
	int wagon;
	int mood;
	int decision;

	//Gather user input
	printf("Weather outlook? (1=Good, 0=Bad)");
	scanf("%d", &weather);
	printf("Picnic readiness? (1=Good, 0=Bad)");
	scanf("%d", &readiness);
	printf("Is there a supermarket, just in case? (1=Yes, 0=No)");
	scanf("%d", &supermarket);
	printf("Minivan condition? (1=Good, 0=Bad)");
	scanf("%d", &minivan);
	printf("Station wagon condition (just in case)? (1=Good, 0=Bad)");
	scanf("%d", &wagon);
	printf("Mood? (1=Good, 0=Bad)");
	scanf("%d", &mood);

	//Calculate outcome and display the decision
	decision = (weather && (readiness || supermarket) && (minivan || wagon) && mood);
	printf("Under these conditions the decision is:  %d",decision);
}
