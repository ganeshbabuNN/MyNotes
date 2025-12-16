/*

 Description : Passing variables to functions, Ansi-style
 	 	 	   This is an example of functional programming, in which the
 	 	 	   user interacts with an ATM to debit or credit an account.
 	 	 	   The program performs 3 transactions. The last two transactions
 	 	 	   also include adding a monetary gift to the account.
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Global variables
float accountBalance, amount;

//prototypes declarations
void initializeAccount();
void getBalance(void);
void askCustomer(void);
void updateAccount(float value);
void addGift(float giftAmount);
void thankYou(void);

int main(void) {
	initializeAccount();
	getBalance();
	//Perform first transaction
	askCustomer();
	updateAccount(amount);
	getBalance();
	//Perform second transaction
	askCustomer();
	updateAccount(amount);
	addGift(5.0);
	getBalance();
	//Perform third transaction
	askCustomer();
	updateAccount(amount);
	addGift(2.0);
	getBalance();
	thankYou();
	return EXIT_SUCCESS;
}

void initializeAccount(void){
	accountBalance = 0.0;
}

void addGift(float giftAmount){
	accountBalance += giftAmount;
	printf("Congratulations! A gift of $%.2f has been added to your account\n",giftAmount);
}
void askCustomer(void){
	printf("Next transaction please...\n");
	printf("Enter amount to credit (positive) or debit (negative):");
	scanf("%f",&amount);
}

void getBalance(void){
	printf("\nThe current balance in the account is $%.2f\n", accountBalance);
}

void updateAccount(float amount){
	accountBalance += amount;
	printf("The account was updated with $%.2f\n",amount);
}

void thankYou(void){
	printf("------  Thank you!  ------");
}


