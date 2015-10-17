package com.ganesh.hibernate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab3A {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = CHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		String cous[]={"Spring","Hibernate","EJB"};
		
		List<String> ems= new ArrayList<String>();
		ems.add("aa@vedha.com");
		ems.add("bb@vedha.com");
		ems.add("cc@vedha.com");
		
		List<Integer> maks=new ArrayList<Integer>();
		maks.add(new Integer(111));
		maks.add(new Integer(222));
		maks.add(new Integer(1220));
		
		Set<Long> phs = new HashSet<Long>();
		phs.add(new Long(3543534));
		phs.add(new Long(234234));
		phs.add(new Long(656546));
		
		Map<String, Long> refs = new HashMap<String, Long>();
		refs.put("aaa",new Long(12376));
		refs.put("bbb",new Long(76833));
		refs.put("ccc",new Long(23477));
		
		Student stu = new Student("Vedha", "12-01-087", "B.C.A", cous, ems, maks, phs, refs);
		
		session.save(stu);
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

