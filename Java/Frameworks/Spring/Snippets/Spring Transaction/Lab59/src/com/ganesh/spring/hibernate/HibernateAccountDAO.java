package com.ganesh.spring.hibernate;

import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.HibernateTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

public class HibernateAccountDAO implements AccountDAO {
	
	@Autowired
	HibernateTemplate hibernateTemp=null;
	
	@Transactional(propagation=Propagation.REQUIRES_NEW,isolation=Isolation.REPEATABLE_READ)
	public void deposit(int accno, double amt) {
		Account acc = hibernateTemp.load(Account.class, accno,LockMode.READ);
		acc.setBal(acc.getBal()+amt);
		hibernateTemp.update(acc);
		}
	
	@Transactional(propagation=Propagation.REQUIRES_NEW,isolation=Isolation.REPEATABLE_READ)
	public double getBalance(int accno) {
		System.out.println(hibernateTemp);
		Account acc= hibernateTemp.load(Account.class, accno,LockMode.READ);
		double cbal=acc.getBal();
		return cbal;
	}
	
	@Transactional(propagation=Propagation.REQUIRES_NEW,isolation=Isolation.REPEATABLE_READ)
	public void fundsTransfer(int saccno, int daccno, double amt) {
		try{
			Account acc1=hibernateTemp.load(Account.class, daccno,LockMode.READ);
			hibernateTemp.update(acc1);
			acc1.setBal(acc1.getBal()+amt);
			hibernateTemp.update(acc1);
			Account acc2=hibernateTemp.load(Account.class, saccno,LockMode.READ);
			double scbal = acc2.getBal();
			if(scbal >=5000+ amt){
				acc2.setBal(scbal-amt);
				hibernateTemp.update(acc2);
			}else{
				throw new InSufficientFundsException();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	@Transactional(propagation=Propagation.REQUIRES_NEW,isolation=Isolation.REPEATABLE_READ)
	public void withdrawal(int accno, double amt) {
		Account acc = hibernateTemp.load(Account.class, accno,LockMode.READ);
		double cbal=acc.getBal();
		if(cbal>=5000+amt){
		acc.setBal(cbal-amt);
		hibernateTemp.update(acc);
		}else {
			throw new InSufficientFundsException();
		}
	}
}
