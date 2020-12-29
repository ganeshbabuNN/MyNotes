package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab17C {
	public static void main(String[] args) {
		EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		
		OldStudent os = new OldStudent("Nivas", "blore", "Active", 15000, "JLC", "nivas@jlc.com", " 5.6L");
		os.setSid(1);
		manager.merge(os);
		
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
	}
}
