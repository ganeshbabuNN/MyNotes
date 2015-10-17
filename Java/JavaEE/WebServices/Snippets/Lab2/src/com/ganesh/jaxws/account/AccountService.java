package com.ganesh.jaxws.account;

public class AccountService {
	AccountDAO adao= null;
	public AccountService() {
		adao= new AccountDAO();
	}
	
	public double getBal(int accno){
		System.out.println("As- getBal()");
		return adao.getBal(accno);
	}
	
	public void deposit(int accno,double amt){
		System.out.println("AS-Deposit()");
		adao.deposit(accno, amt);
	}
	
	public void withdrawa(int accno,double amt){
		System.out.println("As-Withdraw()");
		adao.withdraw(accno, amt);
	}
	
	

}
