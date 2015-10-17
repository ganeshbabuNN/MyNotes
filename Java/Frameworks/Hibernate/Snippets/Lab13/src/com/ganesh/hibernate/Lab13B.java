package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab13B {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
		    
			Customer cust=(Customer)session.load(Customer.class, 1);
			System.out.println(cust.getCid()+"\t" + cust.getFirstName()+"\t" + cust.getLastName()+"\t" +cust.getEmail()+"\t" +cust.getPhone());
			
			Address add = cust.getAddress();
			System.out.println(add.getAid()+"\t" +add.getCity()+"\t" +add.getStreet()+"\t" +add.getState());
			
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
