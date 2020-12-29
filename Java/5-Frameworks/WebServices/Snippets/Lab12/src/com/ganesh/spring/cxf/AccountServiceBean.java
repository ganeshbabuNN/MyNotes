package com.ganesh.spring.cxf;

import javax.jws.WebService;

@WebService(endpointInterface="com.ganesh.spring.cxf.AccountService")
public class AccountServiceBean implements AccountService {

	public double getBal(int accno) {
		System.out.println("AS-getBal()");
		if(accno <= 100)
			return 100000;
		else
			return 25000;
	}

	public void deposit(int accno, double amt) {
		System.out.println("AS-Deposit()");
		System.out.println(accno+"\t"+amt);
	}

	public void withdraw(int accno, double amt) {
		System.out.println("AS-Deposit()");
		System.out.println(accno+"\t"+amt);
	}		
}
