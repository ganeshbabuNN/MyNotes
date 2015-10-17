package com.ganesh.hibernate;


import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class CHibernateTemplate {
	public static Object saveObject(Object obj){
		Object id = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			Transaction tx = session.beginTransaction();
			id=session.save(obj);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return id;
	}
	
	public static void updateObject(Object obj){
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			Transaction tx = session.beginTransaction();
			session.update(obj);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void deleteObject(Class cls,Serializable s){
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			Transaction tx = session.beginTransaction();
			Object o = session.load(cls, s);
			session.delete(o);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static Object loadObject(Class cls,Serializable s){
		Object o = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			Transaction tx = session.beginTransaction();
			o=session.load(cls, s);
			session.load(cls,s);
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return o;
	}
	
	
}
