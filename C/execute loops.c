/*

 Description : Using the FOR loop, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void listEvenNumbers(void);
void listOddNumbers(void);

int main(void) {
	listEvenNumbers();
	listOddNumbers();
	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
void listEvenNumbers(){
	printf("All EVEN numbers between 0 and 100:\n");
	printf("----------------------------------\n");
	int i;
	for(i = 0; i <= 100; i+=2){
		printf("%d\n",i);
	}
}

void listOddNumbers(){
	printf("\nAll ODD numbers between 0 and 100:\n");
	printf("----------------------------------\n");
	for(int i = 1; i <= 100; i+=2){
		printf("%d\n",i);
	}
}
