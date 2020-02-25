/*

 Description : Breaking Up Code Into Blocks, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#include "specialTasks.h"

//Function prototypes
void task_1(void);
void task_2(void);
void task_3(void);

int main(void) {
	puts("!!!Hello World!!!");  //This is a predefined, built-in function in C

	task_1();
	task_2();
	specialTask_1();
	task_3();

	specialTask_2();

	return EXIT_SUCCESS;
}

void task_1(void){
	//The code that makes up the task goes here

	specialTask_3();
}

void task_2(void){
	//The code that makes up the task goes here

	specialTask_4();
	specialTask_5();
}

void task_3(void){
	//The code that makes up the task goes here
	puts("Enter a number");
	getchar();
}
