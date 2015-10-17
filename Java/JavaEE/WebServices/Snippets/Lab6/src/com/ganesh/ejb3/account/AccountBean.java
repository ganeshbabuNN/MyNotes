package com.ganesh.ejb3.account;

import javax.ejb.Stateless;
import javax.jws.WebService;

@WebService
@Stateless
public class AccountBean implements AccountRemote {
	AccountDAO adao = null;

	public AccountBean() {
		adao = new AccountDAO();
	}

	public double getBal(int accno) {
		 System.out.println("AB-getBal()");
		 return adao.getBal(accno);
	}

	public void deposit(int accno, double amt) {
		System.out.println("AB-getBal()");
		adao.deposit(accno, amt);
	}

	public void withdraw(int accno, double amt) {
		System.out.println("AB-getBal()");
		adao.withdraw(accno, amt);
	}
}
