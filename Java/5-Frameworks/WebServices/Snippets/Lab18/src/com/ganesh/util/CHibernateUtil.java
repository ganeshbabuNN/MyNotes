package com.ganesh.util;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class CHibernateUtil {
	static SessionFactory factory;
	static{
		try{
			Configuration cfg = new Configuration();
			cfg= cfg.configure();
			factory=cfg.buildSessionFactory();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static SessionFactory getSessionFactory(){
		return factory;
	}

}
