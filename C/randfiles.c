/*

 Description : Data management using random access files, Ansi-style
 ============================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Function prototypes
void readAndVerify(void);
void addTextToLocation();

int main(void) {

	readAndVerify();
	//addTextToLocation();
	return EXIT_SUCCESS;
}

void readAndVerify(){
	int ch;
	FILE *fp;  // pointer to a file type
	char messageToWrite[] = "This message will be written to a file";

	// this array will store up tp 30 characters read from the file
	char textBuffer[30];

	// open the file for read/write using the w+ directive
	fp = fopen("/Users/isacartzi/Documents/workspace/13_02/src/message", "w+"); // Change to match your path
	fwrite(messageToWrite, strlen(messageToWrite)+1, 1, fp);

	// Go back to the beginning of the file using fseek
	fseek(fp, SEEK_SET, 0);

	// Verify that the message has been written by reading the file
	// Read the same number of characters as the ones written above
	fread(textBuffer, strlen(messageToWrite)+1, 1, fp);

	printf("%s\n", textBuffer);
	fclose(fp);
}

void addTextToLocation(){
	FILE *fp;

	fp = fopen("/Users/isacartzi/Documents/workspace/13_02/src/message", "w+"); // Change to match your path
	fputs("Not much to say today", fp);

	fseek(fp, 8, SEEK_SET);
	fputs(" to talk about", fp);

	fclose(fp);
}
