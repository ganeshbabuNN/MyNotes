package com.ganesh.jpa;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class JPATemplate {
	public static void save(Object obj){
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			manager.persist(obj);
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
			}
		}
	
	public static void update(Object obj){
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			manager.persist(obj);
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
			}
	}
	
	public static void delete(Class cls, int cid){
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Object obj = manager.find(cls, cid);
			manager.remove(obj);
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
			}
	}
	
	public static List<Object> findList(String jpaql,int start,int total){
		List<Object> list = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Query q = manager.createQuery(jpaql);
			q =q.setFirstResult(start);
			q=q.setMaxResults(total);
			list=q.getResultList();
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return list;
	}
	
	public static List<Object> findList(String jpaql,int start,int total,Object ...args){
		List<Object> list = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Query q = manager.createQuery(jpaql);
			for(int i=0;i<args.length;i++){
			q.setParameter(i+1, args[i]);			
			}
			q=q.setFirstResult(start);
			q=q.setMaxResults(total);
			list =q.getResultList();
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return list;
	}
	
	
	
	public static List<Object> findObject(String jpaql,Object ...args){
		List<Object> list = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Query q = manager.createQuery(jpaql);
			for(int i=0;i<args.length;i++){
				q.setParameter(i+1, args[i]);
			}
			list=q.getResultList();
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return list;
	}
	
	public static int  findInt(String jpaql,Object ...args){
		int x=0;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Query q = manager.createQuery(jpaql);
			for(int i=0;i<args.length;i++){
				q.setParameter(i+1, args[i]);
			}
			x=q.getResultList().size();
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return x;
	}
	
	public static Object load(Class cls,int cid){
		Object obj = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			obj = manager.find(cls, cid);
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return obj;
	}
	
	public static List<Object> findList(String jpaql){
		List<Object> list = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Query q = manager.createQuery(jpaql);
			list = q.getResultList();
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return list;
	}
	
	public static List<Object> findList(String jpaql,Object ...args){
		List<Object> list = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx= manager.getTransaction();
			tx.begin();
			Query q = manager.createQuery(jpaql);
			for(int i=0;i<args.length;i++){
				q.setParameter(i+1, args[i]);
			}
			list=q.getResultList();
			tx.commit();
			manager.close();
		}catch(Exception e){
			e.printStackTrace();
			tx.rollback();
		}
		return list;
	}
	
	
}
