package com.ganesh.ejb3;

import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import com.ganesh.hibernate.Account;
import com.ganesh.to.AccountTO;

@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
public class AccountBean implements AccountRemote {
	
	@PersistenceContext 
	EntityManager manager=null;
	public void addAccount(AccountTO ato) {
		Account acc = new Account(ato.getAtype(), ato.getBcode(), ato.getBal());
		manager.persist(acc);
	}

	public double getBalance(int accno){
		Account acc=manager.getReference(Account.class, accno);
		return acc.getBal();
	}

	@TransactionAttribute(TransactionAttributeType.REQUIRED)
	public void deposit(int accno, double amt) {
		Account acc=manager.getReference(Account.class, accno);
		double cbal = acc.getBal();
		double nbal=cbal +amt;
		acc.setBal(nbal);
		manager.merge(acc);
	}

	public void withdraw(int accno, double amt){
		Account acc=manager.getReference(Account.class, accno);
		double cbal = acc.getBal();
		if(cbal>=amt+5000){
			double nbal=cbal-amt;
			acc.setBal(nbal);
			manager.merge(acc);
		}
	}

	

}
