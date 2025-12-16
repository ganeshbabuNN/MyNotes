/*

 Description : Assignment operators in complex statements
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	puts("Assignment operators in complex statements");

	int a =  5;
	int b = -3;
	int c = 12;

	float r =  1.52;
	float s =  2.08;
	float t = -5.32;

	int integerResult;
	float floatResult;

	integerResult = a * r;
	puts("--------- PART 1 -------------------");
	printf("integerResult = %d\n",integerResult);

	floatResult = a * r;
	printf("floatResult = %f\n",floatResult);

	integerResult = (a > b)*c; //Note that (a>b) is true, i.e. 1
	printf("integerResult = %d\n",integerResult);

	integerResult = (a < b)*c; //Note that (a<b) is false, i.e. 0
	printf("integerResult = %d\n",integerResult);

	puts("--------- PART 2 -------------------");

	printf("a before: %d\n",a);
	integerResult = (++a)*b; //a is incremented first, then used in multiplication
	printf("integerResult: %d\n",integerResult);
	printf("a after: %d\n",a);

	puts("--------- PART 3 -------------------");

	a = 5; //Reset to original value
	printf("a before: %d\n",a);
	integerResult = (a++)*b; //a is used in the multiplication and then incremented
	printf("integerResult: %d\n",integerResult);
	printf("a after: %d\n",a);

	puts("--------- PART 4 -------------------");
	int initialValue = 0;
	int increment = 5;
	int counter = 1;
	int result = initialValue + increment*counter++; //counter is first used in the expression, then incremented by 1
	printf("result first time: %d counter: %d\n",result, counter);
	result = initialValue + increment*counter++; //counter is used in the expression, then incremented by 1 again
	printf("result second time: %d counter: %d\n",result, counter);
	result = initialValue + increment* (++counter); //counter is first incremented by 1, then used in the expression, then decremented by 1
	printf("result third time: %d counter: %d\n",result, counter);


	return EXIT_SUCCESS;
}
