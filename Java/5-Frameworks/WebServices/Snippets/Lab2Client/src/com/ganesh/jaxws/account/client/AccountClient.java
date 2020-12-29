package com.ganesh.jaxws.account.client;

import com.ganesh.jaxws.accountservice.AccountServiceDelegate;
import com.ganesh.jaxws.accountservice.AccountServiceService;

public class AccountClient {

	public static void main(String[] args) {
		AccountServiceService as = new AccountServiceService();
		AccountServiceDelegate asd = as.getAccountServicePort();
		asd.getBal(101);
		asd.getBal(99);
		asd.deposit(101, 5000.0);
		asd.withdrawa(99, 50000.0);		
		System.out.println(asd);
	}
}
