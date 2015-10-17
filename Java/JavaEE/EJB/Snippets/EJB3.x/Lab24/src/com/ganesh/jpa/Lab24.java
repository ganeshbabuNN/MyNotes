package com.ganesh.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

public class Lab24 {
	public static void main(String[] args) {
		EntityTransaction tx = null;
		try
		{
			EntityManagerFactory factory=JPAUtil.getEntityManagerFactory();
			EntityManager manager=factory.createEntityManager();
			tx=manager.getTransaction();
			tx.begin();
			SID id = SIDGenerator.getNextSid("G1");	
			System.out.println(id.getBid()+"\t " + id.getSid());
			Student stu = new Student(id, "ga", "vas@jlc.c", "333");
			manager.persist(stu);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
