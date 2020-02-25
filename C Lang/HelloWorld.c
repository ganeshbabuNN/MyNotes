/*

 Description : Hello World in C, Ansi-style
 ============================================================================


 */

#include <stdio.h>						   //A link to an external library file that handles standard input/output

int main(void)							   //A necessary function in every C program
										   //"int" means that this program must return an integer value
{
    int aNumber;						   //An integer variable

    printf( "Please enter a number: " );   //Display a message on the screen
    scanf( "%d", &aNumber );			   //Receive and store the value entered by the user
    printf( "You entered %d", aNumber );   //Display feedback to the user about the recent input received
    getchar();							   //A "trick" to prevent the program window from closing by waiting
    									   //for an additional character to be typed
    return 0;							   //0 means execution was successful and the operating system is now informed
}
