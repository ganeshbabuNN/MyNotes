package com.ganesh.jpa;

import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class Lab21C {
	public static void main(String[] args) {
	
	EntityTransaction tx = null;
	try{
		EntityManagerFactory factory =Persistence.createEntityManagerFactory("JLCINDIA-PU");
		EntityManager manager = factory.createEntityManager();
		tx= manager.getTransaction();
		tx.begin();
		Course c =(Course)manager.getReference(Course.class,1);
		System.out.println("**** Course info");
		System.out.println(c);
		System.out.println("**** Student info");
		Set<Student> st = c.getStudents();
		for(Student s:st){
			System.out.println(s);
		}
		tx.commit();
	}catch(Exception e){
		e.printStackTrace();
		tx.rollback();
	}
 }
}
