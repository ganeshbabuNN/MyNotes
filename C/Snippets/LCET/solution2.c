/*

 Description : Solution to challenge 07_07
 ============================================================================
 */
//Functions prototypes
void listNumbers(int small, int large, int k);

#include <stdio.h>
#include <stdlib.h>

int main(void) {
	printf("Enter the small number: ");
	int smallNum;
	scanf("%d",&smallNum);

	printf("Enter the large number: ");
	int largeNum;
	scanf("%d",&largeNum);

	listNumbers(smallNum,largeNum,1);
	return EXIT_SUCCESS;
}

void listNumbers(int small, int large, int k){
	printf("Step[%d]: %d\n",k,small);
	if(small<large)
		listNumbers(small+1,large,k+1);
}

