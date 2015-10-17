/*

 Description : Using the WHILE loop, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define TRUE  1;
#define FALSE 0;

//Function prototypes
void whileLoop(int n);
void getInputData(void);

int main(void) {
	whileLoop(1);
	//getInputData();
	return EXIT_SUCCESS;
}

void whileLoop(int n){
	int flag = FALSE;
	while(!flag){
		printf("%d\n",n);
		n++;
		if(n>=10)
			flag = TRUE;
	}
}

void getInputData(void){
	char c = 0;
	while(c != 'x'){
		printf("Enter a letter:");
		c = getchar();
		printf("You entered: %c \n",c);
		getchar();
	}
	printf("\nYou entered x and the loop exited\n");
}
