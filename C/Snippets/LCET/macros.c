/*

 Description : Defining and using macros, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
// Object-like macros
#define NUMBERS 1, 2, 3

// Function-like macros
#define max(X, Y)  ((X) > (Y) ? (X) : (Y))

int main(void) {

	int list[] = { NUMBERS };

	int *p, *q, n;
	int val1=5, val2=12;
	p = &val1;
	q = &val2;
	n = 1;

	int x = max(p,q);		//x = ((p) > (q) ? (p) : (q));
	int y = max(12, 5);     //y = ((12) > (5) ? (12) : (5));
	int z = max(n + 5, *p); //z = ((n + 5) > (*p) ? (n + 5) : (*p))

	printf("x=%x since p=%x and q=%x\n",x,p,q);
	printf("y=%d\n",y);
	printf("z=%d since n+5=%d  and *p=%x",z,(n+5),*p);

	return EXIT_SUCCESS;
}
