package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab14A {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			Customer cust = new Customer("DSD", "DSD", "sdf@m.com", "2343");
			session.save(cust);
			Address add = new Address("GDSD", "Bloree", "karanata");
			session.save(add);
			cust.setAddress(add); //refer F.K for the primary customer table.
			
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
