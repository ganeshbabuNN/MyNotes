package com.ganesh.jpa;

import javax.persistence.
EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {
	static EntityManagerFactory factory;
	static {
		factory = Persistence.createEntityManagerFactory("JLCINDIA-PU");
	}
	public static EntityManagerFactory getEntityManagerFactory(){
		return factory;
	}
}
