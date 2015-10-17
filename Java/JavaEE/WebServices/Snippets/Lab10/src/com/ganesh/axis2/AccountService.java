package com.ganesh.axis2;

public class AccountService {
	AccountDAO adao =null;
	public AccountService(){
		adao=new AccountDAO();
	}
	
	public double getBal(int accno){
		System.out.println("AS-getBal()");
		return adao.getBal(accno);
	}
	
	public void deposit(int accno,double amt){
		System.out.println("AS-deposit()");
		adao.deposit(accno, amt);
	}
	
	public void withdraw(int accno,double amt){
		System.out.println("AS-withdraw");
		adao.withdrawal(accno, amt);
	}	
}
