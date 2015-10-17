package com.ganesh.bankapp.hibernate.account;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.ganesh.bankapp.dao.AccountDAO;
import com.ganesh.bankapp.hibernate.Account;

public class HibernateAccountDAO implements AccountDAO{

	public void deposit(int accno, double amt) {
		Transaction tx = null;
		try{
			Configuration cfg = new Configuration();
			cfg=cfg.configure();
			SessionFactory sf = cfg.buildSessionFactory();
			Session s = sf.openSession();
			tx=s.beginTransaction();
			Account acc=(Account)s.load(Account.class, new Integer(accno));
			double bal =acc.getBal();
			bal =bal+amt;
			acc.setBal(bal);
			s.update(acc);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}	

}
