package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab10D {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		//4. addding the regular student i,e weeday student
		WeekdayStudent wdstu = new WeekdayStudent("Gaa", "Blore", "Enabled", 15000.0, 2000.0, "6.30PM", "Mathikier", "M.S.C",3,"85.5");
		wdstu.setSid(1);
		session.save(wdstu);		
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

