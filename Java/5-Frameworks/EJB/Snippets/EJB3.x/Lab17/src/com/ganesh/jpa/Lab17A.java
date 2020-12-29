package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab17A {
	public static void main(String[] args) {
		EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		
		Student st = new Student("sri", "blore", "Active", 18000);
		st.setSid(1);
		manager.persist(st);
				
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
	}
}
