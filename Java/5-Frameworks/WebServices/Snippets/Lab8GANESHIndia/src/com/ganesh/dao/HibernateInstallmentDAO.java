package com.ganesh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.ganesh.hibernate.Installment;

public class HibernateInstallmentDAO implements InstallmentDAO{

	public void addInstallment(Installment inst) {
		Transaction tx = null;
		try{
			Configuration cfg = new Configuration();
			cfg=cfg.configure();
			SessionFactory sf = cfg.buildSessionFactory();
			Session s = sf.openSession();
			tx=s.beginTransaction();
			s.save(inst);			
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}

}
