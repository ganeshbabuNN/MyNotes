package com.ganesh.bankapp.service;

public class Client {
	public static void main(String[] args) {
		AccountService as = new AccountService();
		as.deposit(101, 1000);
		System.out.println("Ganesh Bank App Completed");
	}
}
