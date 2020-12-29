package com.ganesh.hibernate;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class AHibernateUtil {
	static SessionFactory factory;
	static{
		AnnotationConfiguration cfg = new AnnotationConfiguration();
		cfg=(AnnotationConfiguration)cfg.configure();
		factory=cfg.buildSessionFactory();
	}
	public static SessionFactory getSessionFactory() {
		return factory;
	}
}
