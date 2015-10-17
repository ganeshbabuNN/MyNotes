package com.ganesh.ejb2;

import com.ganesh.to.AccountTO;

public class AccountClient {

	public static void main(String[] args) {
		try{
			Object obj = ServiceLocator.getHome("AccountHomeJNDI");
			AccountHome home=(AccountHome)obj;
			AccountRemote ar = home.create();
			
			//1.add account method
			AccountTO ato= new AccountTO("AD", "C-99", 10000.0);
			ar.addAccount(ato);
			
			//2.deposit method
			double bal = ar.getBalance(2);
			System.out.println(bal);;
			ar.deposit(2, 5000);
			bal =ar.getBalance(2);
			System.out.println(bal);
			System.out.println("=========");
			
			//3 withdraw() method
			bal =ar.getBalance(1);
			System.out.println(bal);
			ar.withdraw(1, 5000.0);
			bal=ar.getBalance(1);
			System.out.println(bal);
		}catch (Exception e) {
			e.printStackTrace();
		}

	}

}
