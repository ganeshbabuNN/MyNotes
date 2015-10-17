package com.ganesh.axis2.account.client;

import com.ganesh.axis2.account.AccountServiceStub;
import com.ganesh.axis2.account.AccountServiceStub.Account;
import com.ganesh.axis2.account.AccountServiceStub.UserMessage;

public class AccountClient {
	public static void main(String[] args) {
		try{
			AccountServiceStub ass = new AccountServiceStub();
			Account acc = new Account();
			acc.setAccno(101);
			acc=ass.getBal(acc);
			System.out.println("Balance "+acc.getAmount());
			acc.setAccno(102);
			acc.setAmount(5000);
			UserMessage um = ass.deposit(acc);
			System.out.println(um.getMsg());
			acc.setAccno(103);
			acc.setAmount(5000);
			um=ass.withdraw(acc);
			System.out.println(um.getMsg());
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
