package com.ganesh.hibernate;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab18A {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			
			Student s1 = new Student("Ganesh", "gan@g.com", 234342);
			session.save(s1);
			Student s2 = new Student("Vedha", "ved@g.com", 21543);
			session.save(s2);
			Student s3 = new Student("Kalyani", "kaly@g.com", 86787);
			session.save(s3);
			
			Course c1 = new Course("Core Java", new Integer(9), new Double(999));
			session.save(c1);
			Course c2 = new Course("Servlets", new Integer(3), new Double(644));
			session.save(c2);
			Course c3 = new Course("JSP", new Integer(1), new Double(2343));
			session.save(c3);
			
			Set<Course> cs1 = new HashSet<Course>();
			cs1.add(c1);
			cs1.add(c2);
			cs1.add(c3);// added new
			s1.setCourses(cs1);
			
			Set<Course> cs2 = new HashSet<Course>();
		//	cs2.add(c1);
			cs2.add(c2);
			cs2.add(c3);
			s2.setCourses(cs2);
			
			Set<Course> cs3 = new HashSet<Course>();
			cs3.add(c1);
			cs3.add(c2);
			s3.setCourses(cs3);
			
			tx.commit();
			session.close();
			System.out.println("Record inserted");
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
		}
	}

}
