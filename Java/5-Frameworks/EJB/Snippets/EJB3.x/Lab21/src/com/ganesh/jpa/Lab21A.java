package com.ganesh.jpa;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab21A {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		Student s1= new Student("Gan", " Gan@j.com", 9999);
		Student s2= new Student("bb", " bb@j.com", 888);
		Student s3= new Student("gg", " gaja@j.com", 5555);
		manager.persist(s1);
		manager.persist(s2);
		manager.persist(s3);
		
		Course c1= new Course("Java", new Integer(4), new Double(999) );
		manager.persist(c1);
		Course c2 = new Course("JSP", new Integer(8), new Double(888));
		manager.persist(c2);
		Course c3 = new Course("EJB", new Integer(7), new Double(9292));
		manager.persist(c3);
		
		Set<Course> cs1= new HashSet<Course>();
		cs1.add(c1);
		cs1.add(c2);
		s1.setCourses(cs1);
		Set<Course> cs2= new HashSet<Course>();
		cs2.add(c2);
		cs2.add(c1);
		cs2.add(c3);
		s2.setCourses(cs2);
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
