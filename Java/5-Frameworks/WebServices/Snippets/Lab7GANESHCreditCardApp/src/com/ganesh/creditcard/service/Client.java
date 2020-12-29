package com.ganesh.creditcard.service;

public class Client {
	public static void main(String[] args) {
		CreditCardService as = new CreditCardService();
		as.deductAmount(123456,10000);
		System.out.println("Credit Card App Completed");
	}
}
