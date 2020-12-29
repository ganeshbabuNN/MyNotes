package com.ganesh.spring.cxf;

import javax.jws.WebService;

@WebService
public interface AccountService {
	public double getBal(int accno);
	public void deposit(int accno,double amt);
	public void withdraw(int accno,double amt);
}
