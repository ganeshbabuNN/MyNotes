package com.ganesh.accounts;

import java.rmi.registry.*;

public class AClient {
	public static void main(String[] args) {
	try{
	Registry reg = LocateRegistry.getRegistry("localhost", 1234);
	Object obj =reg.lookup("AccService");
	AccountService as = (AccountService)obj;
	System.out.println(as.getBalance(101));
	System.out.println(as.getBalance(102));
	System.out.println(as.deposit(102, 5000));
	System.out.println(as.withdraw(101, 5000));
	}catch(Exception e){
		e.printStackTrace();
	}
}
}