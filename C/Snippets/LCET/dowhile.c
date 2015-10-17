/*

 Description : WHILE vs DO-WHILE loops, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define TRUE  1;
#define FALSE 0;

//Function prototypes
void getInputData1(void);
void getInputData2(void);

int main(void) {
	getInputData1();
	//getInputData2();
	return EXIT_SUCCESS;
}

//Using WHILE loop
void getInputData1(void){
	char c = 'x';
	int testVariable = 0;
	while(c != 'x'){
		testVariable = 999;
		printf("Enter a letter:");
		c = getchar();
		printf("You entered: %c \n",c);
		getchar();
	}
	printf("\nYou entered x and the loop exited\n");
	printf("testVariable = %d\n", testVariable);
}

//Using DO-WHILE loop
void getInputData2(void){
	char c = 'x';
	int testVariable = 0;
	do{
		testVariable = 999;
		printf("Enter a letter:");
		c = getchar();
		printf("You entered: %c \n",c);
		getchar();
	} while (c != 'x');
	printf("\nYou entered x and the loop exited\n");
	printf("testVariable = %d\n", testVariable);
}
