package com.ganesh.hibernate;

import org.hibernate.*;

public class Lab10A {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		//1.Adding the students
		Student stu = new Student("ganesh", "Blore", "Enabled", 15000.0);
		stu.setSid(1);
		session.save(stu);
		
		tx.commit();
		session.close();
		System.out.println("Record inserted");
	}catch(Exception e){
		e.printStackTrace();
		if(tx!=null){
			tx.rollback();
		}
	 }
	}
}

