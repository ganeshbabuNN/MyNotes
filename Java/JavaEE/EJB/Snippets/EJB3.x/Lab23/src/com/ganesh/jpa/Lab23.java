package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

public class Lab23 {
	public static void main(String[] args) {
		EntityTransaction tx = null;
		try
		{
			EntityManagerFactory factory=JPAUtil.getEntityManagerFactory();
			EntityManager manager=factory.createEntityManager();
			tx=manager.getTransaction();
			tx.begin();
			Student stu = new Student(SIDGenerator.getNextSid(), "dd", "dd@jl.com","1323");
			manager.persist(stu);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
