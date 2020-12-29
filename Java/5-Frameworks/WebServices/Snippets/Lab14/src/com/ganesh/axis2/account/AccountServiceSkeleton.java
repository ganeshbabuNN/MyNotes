
package com.ganesh.axis2.account;

public class AccountServiceSkeleton {
	public UserMessage withdraw(Account acc) {
		System.out.println("ASS-withdraw()");
		System.out.println(acc.getAccno()+"\t"+acc.getAmount());
		String msg="Your amount has been withdrawan successfully";
		UserMessage um = new UserMessage();
		um.setMsg(msg);
		return um;
	}

	public UserMessage deposit(Account acc) {
		System.out.println("ASS-deposit()");
		System.out.println(acc.getAccno()+"\t"+acc.getAmount());
		String msg ="Your amount has been withdrawan sucessfully";
		UserMessage um=new UserMessage();
		um.setMsg(msg);
		return um;
	}

	public Account getBal(Account acc) {
		System.out.println("ASS-getBal()");
		int accno =acc.getAccno();
		if(accno <=100)
			acc.setAmount(10000);
		else
			acc.setAmount(20000);
		return acc;
		
	}

}
