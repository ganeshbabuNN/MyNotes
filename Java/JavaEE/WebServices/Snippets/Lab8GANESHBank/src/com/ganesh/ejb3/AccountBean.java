package com.ganesh.ejb3;

import javax.ejb.Stateless;
import javax.jws.WebService;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@WebService
@Stateless
public class AccountBean implements AccountRemote{
	@PersistenceContext
	EntityManager manager = null;

	public void deposit(int accno, double amt) {
		Account acc=(Account)manager.getReference(Account.class, accno);
		double bal=acc.getBal();
		bal=bal+amt;
		acc.setBal(bal);
		manager.merge(acc);
	}
	
}
