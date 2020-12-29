package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab2B {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		Customer cust =(Customer)session.load(Customer.class,3);
		System.out.println(cust.getCid()+"\t" + cust.getCname()+"\t" +cust.getEmail()+"\t" +cust.getPhone()+"\t" +cust.getCity()+"\t" +cust.getBal());
		
		tx.commit();
		session.close();
		System.out.println("Record displayed");
	}catch(Exception e){
		e.printStackTrace();
		if(tx!=null){
			tx.rollback();
		}
	 }
	}
}

