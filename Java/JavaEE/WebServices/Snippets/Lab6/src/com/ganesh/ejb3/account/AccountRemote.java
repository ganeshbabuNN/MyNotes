package com.ganesh.ejb3.account;

import javax.ejb.Remote;
import javax.jws.WebService;

@WebService
@Remote
public interface AccountRemote {
	public double getBal(int accno);
	public void deposit( int accno, double amt);
	public void withdraw(int accno, double amt);
}
