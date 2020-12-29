package com.ganesh.bankapp.hibernate;

import com.ganesh.bankapp.service.AccountService;

public class Client {
	public static void main(String[] args) {
		AccountService as = new AccountService();
		as.deposit(101, 10000);
		System.out.println("Ganesh Bank App Completed");
	}

}
