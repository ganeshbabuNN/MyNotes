package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab17D {
	public static void main(String[] args) {
		EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		
		WeekdayStudent ws = new WeekdayStudent("SD", "Blore", "Active", 18000, 8000, "10:00-2:00", "BTM", "MTech", "98%", "1999");
		ws.setSid(1);
		manager.merge(ws);
		
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
	}
}
