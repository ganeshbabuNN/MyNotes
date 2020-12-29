package com.ganesh.hibernate;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab17C {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
		    
			Course c =(Course)session.load(Course.class,1);
			System.out.println("**** Course info***");
			System.out.println(c);
			System.out.println("***** Student info");
			Set<Student> stus = c.getStudents();
			for(Student s: stus)
				System.out.println(s);
			tx.commit();
			session.close();			
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
		}
	}

}
