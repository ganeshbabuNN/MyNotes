/*

 Description : Assessing whether a FOR loop is appropriate, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void listEvenNumbers(void);
void listEvenNumbersRecursive(int k);

int main(void) {
	listEvenNumbers();
	printf("\nAll EVEN numbers between 0 and 100 (recursively):\n");
	printf("------------------------------------------------\n");
	listEvenNumbersRecursive(0);
	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
void listEvenNumbers(){
	/*
	 * A FOR loop is appropriate because we want the same
	 * action to be executed a predetermined number of times
	 */
	printf("All EVEN numbers between 0 and 100:\n");
	printf("----------------------------------\n");
	int i;
	for(i = 0; i <= 100; i+=2){
		printf("%d\n",i);
	}
}

void listEvenNumbersRecursive(int k){
	/*
	* A recursive call to a function is essentially a loop.
	* While it works, it is consumes a lot of computer memory.
	*/
	if(k <= 100){
		printf("%d\n",k);
		listEvenNumbersRecursive(k+2);
	}

}


