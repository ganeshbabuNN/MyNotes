/*

 Description : Testing code correctness, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {

	/* --- QUANTITATIVE MEASURES --- */

	int numbers[100];
	char word[100];
	float distance;
	double longDistance;

	/* some lines of code would go here... */

	// Is there a problem with uninitialized arrays?
	printf("numbers[58] = %d\n",numbers[58]);
	printf("word[58]    = %c\n",word[58]);
	printf("distance = %f\n",distance);
	printf("longDistance = %lf\n",longDistance);

	/* --- QUALITATIVE MEASURES --- */
	/*
	 * 1. Is the problem you are trying to solve in code
	 *    been clearly stated and defined? How do you know?
	 *
	 * 2. Think, have a plan, develop an algorithm, draw a
	 *    flowchart, ONLY THEN start writing code
	 *
	 * 3. "Debug" algorithms on paper. Think about extreme scenarios:
	 *    - very large data sets
	 *    - very small data sets
	 *    - the absence of data
	 *    - very large numbers
	 *    - very small (almost zero) numbers
	 *
	 * 4. Simple is better than smart. Simple means:
	 *    - easy to debug
	 *    - easy to improve
	 *    - easy to explain
	 *    - easy to give to someone else
	 *
	 * 5. Verify code as you go. Organize your code into small
	 *    functions that can be tested individually.
	 */

	return EXIT_SUCCESS;
}

void initializeValues(){
	/*
	 * Initialize here every variable YOU think
	 * makes sense to initialize. Consider calling
	 * this function first in main(), before anything
	 * else is executed. IF THIS APPROACH MAKES SENSE
	 * FOR THE PROJECT AT HAND.
	 */
}
