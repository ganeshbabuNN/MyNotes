package com.ganesh.jpa;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab20B {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		Customer cust =(Customer)manager.getReference(Customer.class, 1);
		System.out.println("Customer info");
		System.out.println(cust);
		System.out.println("Request info");
		Collection<Request> col=cust.getRequests();
		for(Request req:col){
			System.out.println(req);
		}
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
