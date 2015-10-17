package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab10F {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		Student st = (Student) session.load(WeekendStudent.class, 1);
		System.out.println(st);
	}catch(Exception e){
		e.printStackTrace();
		if(tx!=null){
			tx.rollback();
		}
	 }
	}
}

