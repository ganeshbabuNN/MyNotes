package com.ganesh.spring.jpa;

public interface AccountDAO {
	public void deposit(int accno,double amt);
	public void withdrawal(int accno,double amt);
	public void fundsTransafer(int saccno,int daccno,double amt);
	public double getBalance(int accno);
}
