package com.ganesh;

public class AccountService {
	public void getBal() {
		System.out.println("Getting the balance");
		System.out.println("Getting the balance Tx Done");
		System.out.println("Getting the balance Tx Over");
	}
	
	public void myDesposit(){
		System.out.println("Deposting the amount");
		System.out.println("Deposting the amount done");
		System.out.println("Deposting the amount Over");		
	}
	
	public void mywithdraw() throws Exception {
		System.out.println(" withdrawing the amount");
	if(1==1) {
			throw new InsufficientFundsException();
		}
		System.out.println("withdrawing the over");
	}
}
