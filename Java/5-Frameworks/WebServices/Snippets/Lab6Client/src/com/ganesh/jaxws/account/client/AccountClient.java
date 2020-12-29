package com.ganesh.jaxws.account.client;

import com.ganesh.jaxws.account.AccountBean;
import com.ganesh.jaxws.account.AccountBeanService;

public class AccountClient {
	public static void main(String[] args) {
		AccountBeanService abs = new AccountBeanService();
		AccountBean ab = abs.getAccountBeanPort();
		ab.getBal(101);
		ab.getBal(99);
		ab.deposit(101, 50000.0);
		ab.withdraw(99, 5000.0);		
	}
}
