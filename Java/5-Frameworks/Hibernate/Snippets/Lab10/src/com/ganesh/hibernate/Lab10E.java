package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab10E {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		//5 Adding the weekend students
		WeekendStudent wstu = new WeekendStudent("cc", "Blore", "Enabled", 15000.0, 2000.0, "6.30PM", "Marathali", "Ganesh Soft", "ganesh@g.com", 14300.0);
		wstu.setSid(1);
		session.save(wstu);
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

