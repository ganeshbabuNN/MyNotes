package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab15A {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			
			Customer cust = new Customer("Vedha", "Kumar", "ved@g.com",233434);
			session.save(cust);
			
			Request req1 = new Request("25/07/2014", "hai1", "ok3");
			session.save(req1);
			Request req2= new Request("26/07/2014", "hai2", "ok4");
			session.save(req2);
			req1.setCustomer(cust);
			req2.setCustomer(cust);
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
