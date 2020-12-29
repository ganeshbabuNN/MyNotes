package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab13A {
	public static void main(String[] args) {
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Customer cust = new Customer("Priya", "pri@gmail.com", "1000", "HOSUR", 28000);
			manager.persist(cust);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}

}
