package com.ganesh.jpa;

import java.io.Serializable;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

public class JPATemplate {
	public static void persist(Object obj){
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory = JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx = manager.getTransaction();
			tx.begin();
			manager.persist(obj);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}
	public static void merge(Object obj){
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory = JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx = manager.getTransaction();			
			tx.begin();
			manager.merge(obj);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}
	
	public static void remove(Class cls,Serializable id){
		Object obj =null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory = JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx = manager.getTransaction();			
			tx.begin();
			obj = manager.getReference(cls, id);
			manager.remove(obj);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
	}
	
	public static Object getReference(Class cls,Serializable id){
		Object obj =null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory = JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx = manager.getTransaction();			
			tx.begin();
			obj = manager.getReference(cls, id);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return obj;
	}
}
