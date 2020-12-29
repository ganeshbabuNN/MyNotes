package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab20A {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		
		Customer cust = new Customer("banu", "ng", "ng@gg.com", 192833);
		manager.persist(cust);
		Request req1 = new Request("22/7/2014", "ohh1", "ok1");
		manager.persist(req1);
		Request req2 = new Request("23/7/2014", "ohh3", "ok2");
		manager.persist(req2);
		req1.setCustomer(cust);
		req2.setCustomer(cust);
		
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
