/*

 Description : Solution to challenge 17_03, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
//Prototype
void getDirection(void);

int main(void) {
	getDirection();
	return EXIT_SUCCESS;
}
//Function definition
void getDirection(void){
	double dir;
	printf("Enter a direction between 0.0¡ and 360.0¡:");
	scanf("%lf", &dir);
	if (dir <  90.0) printf("You're headed N %.1f¡ E\n",dir);
	else if (dir <  180.0) printf("You're headed S %.1f¡ E\n",180.0-dir);
	else if (dir <  270.0) printf("You're headed S %.1f¡ W\n",dir-180.0);
	else if (dir <= 360.0) printf("You're headed N %.1f¡ W\n",360.0-dir);
	else printf("Angle > 360 (%.1f) not allowed\n", dir);
}

