package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab9B {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = CHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		Student st= (Student)session.load(Student.class, 1);
		System.out.println(st);
		
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

