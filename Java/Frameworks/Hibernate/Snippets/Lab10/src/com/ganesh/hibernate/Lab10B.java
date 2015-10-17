package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab10B {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		//2.Adding the current student
		CurrentStudent cstu = new CurrentStudent("ga", "Blore", "Enabled", 15000.0, 2000, "6:30PM", "Mathikere");
		cstu.setSid(1);
		session.save(cstu);	
		
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

