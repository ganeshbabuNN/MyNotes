package com.ganesh.hibernate;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab24A {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			
			List<String> qualis= new ArrayList<String>();
			qualis.add("M.Sc");
			qualis.add("M.C.A");
			qualis.add("M.Tech");
			
			Set<String> exps = new HashSet<String>();
			exps.add("SUN");
			exps.add("IBM");
			exps.add("Oracle");
			
			Author a1 = new Author("Ganesh", "ganeh@jl.com", 12342, new Date(), qualis, exps);
			session.save(a1);
			Author a2 = new Author("Vehda", "Vedha@jl.com", 4422, new Date(), qualis, exps);
			session.save(a2);
			
			Book b1 = new Book("Core Java", 939.2, 1, "BMP");
			session.save(b1);
			Book b2 = new Book("EJB 3.1", 789, 3, "Wiley");
			session.save(b2);
			Book b3 = new Book("Pro Spring",545, 2, "Apress");
			session.save(b3);
			
			Set<Author> as1= new HashSet<Author>();
			as1.add(a1);
			Set<Author> as2= new HashSet<Author>();
			as2.add(a1);
			as2.add(a2);
			b1.setAuthors(as1);
			b2.setAuthors(as2);
			
			
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
