package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab20C {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		Request req =(Request)manager.getReference(Request.class,1);
		System.out.println("**** Request info");
		System.out.println(req);
		Customer cust = req.getCustomer();
		System.out.println("**** Customer info");
		System.out.println(cust);
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
