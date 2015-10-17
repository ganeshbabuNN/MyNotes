package com.ganesh.axis2;

public class AccountDAO {
	public double getBal(int accno){
		System.out.println("ADAO-getBal()");
		if(accno<=100)
			return 10000;
		else
			return 25000;
	}
	public void deposit(int accno,double amt){
		System.out.println("ADAO- deposit");
		System.out.println(accno+"\t" +amt);
	}
	public void withdrawal (int accno,double amt){
		System.out.println("ADAo-withdrawal");
		System.out.println(accno+"\t"+amt);
	}
}
