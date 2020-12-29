package com.ganesh.ejb3;

import javax.ejb.Remote;

import com.ganesh.to.AccountTO;

@Remote
public interface AccountRemote{
	public void addAccount(AccountTO ato);
	public double getBalance(int accno);
	public void deposit(int accno,double amt);
	public void withdraw(int accno,double amt);
}
