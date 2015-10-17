/*

 Description : Solution to challenge 17_01, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

//Prototype
double loanPayment(double,int,double);

int main(void) {

	double  amount;
	int     nYears;
	double  rate;

	printf("Enter loan amount:");
	scanf("%lf", &amount);

	printf("Enter yearly interest rate:");
	scanf("%lf", &rate);

	printf("Enter number of years:");
	scanf("%d", &nYears);

	double payment = loanPayment(amount,nYears,rate);
	printf("Monthly payment = $%.2lf\n",payment);
	printf("Total payback = $%.2lf",payment*nYears*12);

	return EXIT_SUCCESS;
}

double loanPayment(double amount,int nYears,double rate){
	double interest = (rate/100.0)/12.0;
	int n = nYears*12;
	double top = (pow((1 + interest),n) - 1);
	double bottom = interest*pow((1+interest),n);
	double D = top/bottom;
	double payment = amount/D;
	return payment;
}
