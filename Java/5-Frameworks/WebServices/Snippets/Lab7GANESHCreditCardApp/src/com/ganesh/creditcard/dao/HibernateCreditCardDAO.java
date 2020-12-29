package com.ganesh.creditcard.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.ganesh.creditcard.hibernate.CreditCard;

public class HibernateCreditCardDAO implements CreditCardDAO {

	public void deductAmount(int ccno, double amt) {
		Transaction tx = null;
		try{
			Configuration cfg = new Configuration();
			cfg=cfg.configure();
			SessionFactory sf = cfg.buildSessionFactory();
			Session s = sf.openSession();
			tx=s.beginTransaction();
			CreditCard acc=(CreditCard)s.load(CreditCard.class, new Integer(ccno));
			double bal = acc.getBal();
			bal =bal-amt;
			acc.setBal(bal);
			s.update(acc);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}	
}
