package com.ganesh.jpa;

import java.util.Collection;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab21B {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		Student s1 = (Student)manager.getReference(Student.class, 2);
		System.out.println("Student info");
		System.out.println(s1);
		System.out.println("Courses info");
		Set<Course> cous = s1.getCourses();
		for(Course c: cous){
			System.out.println(c);
		}
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
