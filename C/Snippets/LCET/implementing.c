/*

 Description : Recursive function calls, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int Fibonacci (int n){
	/*
	 * These are all the recursive calls.
	 * Uncomment the printf line below if you
	 * want to follow the recursive process
	 * Warning: there will be many lines printed
	 */

	//printf("n = %d\n",n);

	if (n == 0)
		return 0;
	else if (n == 1)
		return 1;
	else
		return Fibonacci(n-1) + Fibonacci(n-2);
}

void generateFibonacci(int numbers){
	// These are the first <numbers> values
	// in the Fibonacci series

	int n=0;
	for(int i=0; i<numbers; i++){
		printf("[%2d]: %5d\n",n,Fibonacci(n));
		n++;
	}
}

// Notice that main is now at the bottom.
// It can be anywhere and it is always the
// first function executed

int main(void){
	generateFibonacci(25);
	return EXIT_SUCCESS;
}

