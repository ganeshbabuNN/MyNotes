package com.ganesh.hibernate;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab18B {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
		    
		    System.out.println("***************");
		    Student s1 = (Student)session.load(Student.class, 2);
		    System.out.println("*** student info");
		    System.out.println(s1);
		    System.out.println("***** course info");
		    Set<Course> cous = s1.getCourses();
		    for(Course c : cous){
		    	System.out.println(c);
		    }
			
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
