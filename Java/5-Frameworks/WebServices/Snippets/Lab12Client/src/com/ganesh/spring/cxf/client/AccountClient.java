package com.ganesh.spring.cxf.client;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.ganesh.spring.cxf.AccountService;

public class AccountClient {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh-client.xml");
		AccountService as=(AccountService)ctx.getBean("accountservice");
		double bal = as.getBal(101);
		System.out.println("Balance: "+ bal);
		as.deposit(102, 5000);
		as.withdraw(103, 50000);		
	}
}
