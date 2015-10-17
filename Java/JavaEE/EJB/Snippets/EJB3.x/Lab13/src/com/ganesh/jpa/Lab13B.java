package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab13B {
	public static void main(String[] args) {
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Customer cust = (Customer)manager.getReference(Customer.class,5);
			System.out.println(cust.getCid()+"\t"+cust.getCname()+"\t" +cust.getEmails()+"\t"+cust.getPhone()+"\t"+cust.getCity()+"\t"+cust.getBal());
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}

}
