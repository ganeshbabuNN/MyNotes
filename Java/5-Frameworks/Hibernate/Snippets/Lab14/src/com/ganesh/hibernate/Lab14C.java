package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab14C {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
		    
			Address add = (Address)session.load(Address.class, 2);
			System.out.println(add.getAid()+"\t" +add.getCity()+"\t" +add.getStreet()+"\t" +add.getState());
			
			Customer cust=add.getCustomer();
			System.out.println(cust.getCid()+"\t" + cust.getFirstName()+"\t" + cust.getLastName()+"\t" +cust.getEmail()+"\t" +cust.getPhone());
			
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
