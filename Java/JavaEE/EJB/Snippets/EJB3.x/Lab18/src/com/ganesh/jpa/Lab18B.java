package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab18B {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		Customer cust=(Customer)manager.find(Customer.class, new Integer(1));
		System.out.println("Customer info");
		System.out.println(cust);
		System.out.println("Address info");
		Address add =cust.getAddress(); 
		System.out.println(add);
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
