package com.ganesh.hibernate;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab20B {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			Customer cust = (Customer)session.load(Customer.class, 2);
			cust.setEmail("ss@j.com");
			session.update(cust);;
			
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
