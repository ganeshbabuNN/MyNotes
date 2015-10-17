package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab15A {
	public static void main(String[] args) {
		EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		
		Student st = new Student("sri", "blore", "Active", 18000);
		manager.persist(st);
		
		CurrentStudent cs = new CurrentStudent("vas", "blore", "Active", 17000, 5000, "7:00-9:00", "Mathikere");
		manager.merge(cs);
		
		OldStudent os = new OldStudent("Nivas", "blore", "Active", 15000, "JLC", "nivas@jlc.com", " 5.6L");
		manager.merge(os);
		
		WeekdayStudent ws = new WeekdayStudent("SD", "Blore", "Active", 18000, 8000, "10:00-2:00", "BTM", "MTech", "98%", "1999");
		manager.merge(ws);
		
		WeekendStudent wes = new WeekendStudent("Srinivas", "Blore", "Active", 20000 , 5000, "8:00-2:00", "Mathikere", "JLC","sriniva@jlc.com" ," 12.5L");
		manager.merge(wes);
		
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
	}
}
