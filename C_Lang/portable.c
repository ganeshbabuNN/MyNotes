/*

 Description : Developing portable code, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define MAX_CHARS 10

int main(void) {

	// Do not assume size of data types. Use sizeof()
	printf("Size of <long>: %d\n",sizeof(long));
	printf("Size of <int>: %d\n",sizeof(int));
	printf("Size of <float>: %d\n",sizeof(float));

	puts("-------------------------------");

	// Beware of ++n and n++
	char letters[5] = {'a','b','c','d','e'};
	char symbols[5] = {'1','2','3','4','5'};
	int n = 0;
	letters[n] = symbols[++n];
	printf("n=%d  letters[%d]=%c\n", n,0,letters[0]);

	char letters1[5] = {'a','b','c','d','e'};
	char symbols1[5] = {'1','2','3','4','5'};
	n = 0;
	letters1[n] = symbols1[n++];
	printf("n=%d  letters1[%d]=%c\n", n,0,letters1[0]);

	/* Beware of signed and unsigned char type
	 * The code below will crash if char is unsigned
	 * words[k] could be 255 and EOF be -1
	 * */

	/*
	int k;
	char words[MAX_CHARS];
	for (k = 0; k < (MAX_CHARS-1); k++){
		if(((words[k] = getchar()) == '\n') || (words[k] == EOF))
			break;
	}
	words[k] = '\0';  // Null terminator

	// --- Solution to above crash ---
	int ch;
	for(k=0; k<(MAX_CHARS-1); k++){
		if((  (ch = getchar()) == '\n') || (ch == EOF))
			break;
	}
	words[k] = ch;
	 */

	/* Beware of shifting bits with signed numbers
	 *
	 */
	printf(" 5 >> 1 is %d\n", 5 >> 1);
	printf("-5 >> 1 is %d\n",-5 >> 1);


	/*
	 * Beware of structs and memory layout. It is unknown
	 * whether price and title below occupy contiguous space
	 * in memory.
	 */

	struct book{
		double price;
		char title[20];
	};

	/*
	 * Beware of data portability across operating systems.
	 * in Unix/Linux/Mac end of line in text files in '\n'.
	 * On Windows it COULD be '\n' but it COULD be '\r'
	 *
	 * ASCII is only used in English-speaking countries. What
	 * about Chinese, Japanese where char = 16 bits?
	 */

	return EXIT_SUCCESS;
}
