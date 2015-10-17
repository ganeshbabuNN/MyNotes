package com.ganesh.spring3;

public class AccountService {
	public void getBal(){
		System.out.println("getBal-begin");
		System.out.println("getBal-done");
		System.out.println("getBal-end");
	}
	
	public void myDeposit(){
		System.out.println("myDeposit-begin");
		System.out.println("myDeposit-done");
		System.out.println("myDeposit-end");
	}
	
	public void myWithdraw() throws Exception{
		System.out.println("myWithdraw-begin");
		if(1==1){
			throw new InsufficentFundException();
		}
		System.out.println("myWithdraw-end");
	}
}
