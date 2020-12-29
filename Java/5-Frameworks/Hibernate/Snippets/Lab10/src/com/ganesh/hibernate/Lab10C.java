package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab10C {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		//3.Adding to Old student
		OldStudent ostu = new OldStudent("gaa", "Blore", "Enabled", 15000.0, "Ganesh Soft", "ganesh@g.com", 9.0);
		ostu.setSid(1);
		session.save(ostu);	
		
		tx.commit();
		session.close();
	}catch(Exception e){
		e.printStackTrace();
		if(tx!=null){
			tx.rollback();
		}
	 }
	}
}

