package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab17E {
	public static void main(String[] args) {
		EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		
		WeekendStudent wes = new WeekendStudent("Srinivas", "Blore", "Active", 20000 , 5000, "8:00-2:00", "Mathikere", "JLC","sriniva@jlc.com" ," 12.5L");
		wes.setSid(1);
		manager.merge(wes);		
		
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
	}
}
