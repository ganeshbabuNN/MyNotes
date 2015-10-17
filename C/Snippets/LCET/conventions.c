/*

 Description : Meaningful naming conventions, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {

	// Good					//Bad
	int roomNumbers[];		int rm[];
	int firstNumInSeries;	int firstnuminseries;
	double twiceTheRisk;		double	doubler;
	double mpg;
	double MPG;
	double milesPerGallon;	double milespergallon;

	int x=0;					int x=0,y=0,z=0;  //but often acceptable
	int y=0;
	int z=0;

	/*
	 * Rule of thumb: ask yourself whether the name
	 * of a variable, a function, a macro, etc. makes
	 * sense to you.
	 *
	 * Are you going to remember next week
	 * or next month or in a year what you meant?
	 *
	 * If your project needs to be transferred to
	 * someone else (so you can get a promotion) will
	 * they be able to understand your code? Or perhaps
	 * you will stay stuck in your lower level position
	 * because you are the prisoner of your code...
	 */

	return EXIT_SUCCESS;
}
