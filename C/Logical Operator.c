/*

 Description : Decision making using relational and logical operators

				 !		not
				== 		is-equal?
				!= 		is-not-equal?
				> 		bigger than?
				< 		smaller than?
				>=		bigger-or-equal than?
				<=		smaller-or-equal than?
				&&		logical and
				||		logical or
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	puts("Logical operators - results are always 1 or 0, i.e. True or False");
	puts("Remember that 1=TRUE and 0=FALSE");
	puts("-----------------------------------------------------------------");

	int x = 3;
	int y = 12;

	printf("If x=3 and y=12 then (x == y) is %d\n",(x==y));
	printf("If x=3 and y=12 then (x != y) is %d\n",(x!=y));
	printf("If x=3 and y=12 then (x > y) is %d\n",(x>y));
	printf("If x=3 and y=12 then (x < y) is %d\n",(x<y));
	printf("If x=3 and y=12 then (x >= y) is %d\n",(x>=y));
	printf("If x=3 and y=12 then (x <= y) is %d\n",(x<=y));

	puts("-------------------------------------------------");
	x = 1;
	y = 0;
	printf("If x=1 and y=0 then (x && y) is %d\n",(x && y));
	printf("If x=1 and y=0 then (x || y) is %d\n",(x || y));
	printf("If x=1 and y=0 then !x is %d\n",!x);



	return EXIT_SUCCESS;
}
