package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JPALab1 {
	public static void main(String[] args) {
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("GB_PU");
			EntityManager manager = factory.createEntityManager();
			tx=manager.getTransaction();
			tx.begin();
			Customer cust = new Customer("ganesh", "g@j.com", "0332", "Blore");
			manager.persist(cust);
			tx.commit();
			System.out.println("Check Database");
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}

}
