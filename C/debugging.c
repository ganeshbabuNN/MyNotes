/*

 Description : Implementing debugging techniques, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Constants
#define DEBUG_ON  1
#define DEBUG_OFF 0
#define DEBUG_ALERT "----->"

// Globals

int debugFlag = DEBUG_OFF;

// Prototypes
void someFunction1(int,int);
void someFunction2(float,float);
void someFunction3(int,float);

int main(void) {

	someFunction1(3,5);
	someFunction2(2.0,3.0);
	someFunction3(0,1.0);

	return EXIT_SUCCESS;
}

void someFunction1(int a, int b){
	if(debugFlag)
		printf ("%s In someFunction1, received a=%d, b=%d\n",DEBUG_ALERT, a,b);

	printf("someFunction1 is executing...\n");
	printf("someFunction1 is still doing something...\n");
	printf("someFunction1 keeps going...\n");

	//Rest of function code
}


void someFunction2(float a, float b){
	if(debugFlag)
		printf ("%s In someFunction2, received a=%f, b=%f\n",DEBUG_ALERT,a,b);

	printf("someFunction2 is executing...\n");
	int k = 4; int j = 8; int z = -4;
	double m = (double)k * (double)k /((double) j + (double) z);
	if(debugFlag)
		printf ("%s In someFunction2, m=%lf at line %d\n",DEBUG_ALERT,m,__LINE__);

	//Rest of function code
}


void someFunction3(int a, float b){
	if(debugFlag)
		printf ("%s In someFunction3, received a=%d, b=%f\n",DEBUG_ALERT,a,b);

	printf("someFunction3 is executing...\n");
	printf("someFunction3 is busy looping...\n");
	printf("someFunction3 is still doing something...\n");
	int s = 4; int d = 8; int k = -4;
	double m = (double)s * (double)d /((double) k + (double) s);
	if(debugFlag)
		printf ("%s In someFunction2, m=%lf at line %d\n",DEBUG_ALERT,m,__LINE__);
	printf("someFunction3 keeps going...\n");

	//Rest of function code
}
