package com.ganesh.ejb3;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.jws.WebService;

@WebService
@Remote
public interface AccountRemote {
	public void deposit(int accno,double amt);
}
