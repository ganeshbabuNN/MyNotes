/*

 Description : Use appropriate file access modes, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Function prototypes
void copyFromSourceToDestination(void);
void appendCopyrightNotice(void);

int main(void) {

	//copyFromSourceToDestination();
	appendCopyrightNotice();

	return EXIT_SUCCESS;
}

//---- FUNCTION DEFINITIONS ----
void copyFromSourceToDestination(){
	int ch;
	FILE *src, *dest;  // pointers to a file type
	src = fopen("/Users/isacartzi/Documents/workspace/13_03/src/sourceFile","r"); // Change to match your path
	dest = fopen("/Users/isacartzi/Documents/workspace/13_03/src/destinationFile","w"); // Change to match your path
	ch = getc(src);
	while (ch != EOF){   // keep looping until EOF of source file
		putc(ch, dest);   // write to destination file
		ch = getc(src);
	}
	fclose(src);
	fclose(dest);
}

void appendCopyrightNotice(){
	FILE *fp;  // pointer to a file type
	// open the destination file to append copyright notice
	fp = fopen("/Users/isacartzi/Documents/workspace/13_03/src/destinationFile", "a"); // Change to match your path
	fprintf(fp,"\n\nCopyright 2014, XYZ Company");

	fclose(fp);
}

