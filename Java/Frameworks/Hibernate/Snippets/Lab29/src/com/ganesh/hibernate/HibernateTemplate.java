package com.ganesh.hibernate;


import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class HibernateTemplate {
	public static Object save(Object obj){
		Transaction tx = null;
		Object ob = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			ob=session.save(obj);
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			e.printStackTrace();
			}
		}
		return ob;
	}
	
	public static Object load(Class cls,Serializable id){
		Transaction tx = null;
		Object obj = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			obj=session.load(cls, id);
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
			tx.rollback();
		e.printStackTrace();
		  }
		}
		return obj;
	}
	
	public static void delete(Class cls,Serializable id){
		Transaction tx = null;
		Object obj = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			obj=session.load(cls, id);
			session.delete(obj);
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			e.printStackTrace();
			  }
			}
	}
	public static void update(Object obj){
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			session.update(obj);
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			e.printStackTrace();
			  }
		}
	}
	
	public static List getList(String hql,Object ...args){
		Transaction tx = null;
		List list =null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			Query q = session.createQuery(hql);
			for(int i=0;i<args.length;i++){
				q=q.setParameter(i, args[i]);
			}
			list=q.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			e.printStackTrace();
			  }
			}
		return list;
	}
	
	public static List findList(String hql,int start, int total,Object ...args){
		Transaction tx = null;
		List list =null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			Query q = session.createQuery(hql);
			q=q.setFirstResult(start);
			q=q.setMaxResults(total);
			for(int i=0;i<args.length;i++){
				q.setParameter(i, args[i]);
			}
			list=q.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			e.printStackTrace();
			  }
			}
		return list;
	}
	
	public static Object findObject(String hql,Object ...args){
		Transaction tx = null;
		Object obj =null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session= sf.openSession();
			tx = session.beginTransaction();
			Query q = session.createQuery(hql);
			for(int i=0;i<args.length;i++){
				q.setParameter(i, args[i]);
			}
			obj=q.uniqueResult();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			e.printStackTrace();
			  }
			}
		return obj;
	}
}
