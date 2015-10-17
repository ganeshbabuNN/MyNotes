package com.ganesh.hibernate;

import org.hibernate.*;

public class Lab7A {
	public static void main(String[] args) {
	Transaction tx = null;
	try{
		SessionFactory sf = AHibernateUtil.getSessionFactory();
		Session session = sf.openSession();
		tx = session.beginTransaction();
		
		//1.Adding the students
		Student stu = new Student("ganesh", "Blore", "Enabled", 15000.0);
		Integer it =(Integer)session.save(stu);
		System.out.println(it.intValue());;
		
		//2.Adding the current student
		CurrentStudent cstu = new CurrentStudent("ga", "Blore", "Enabled", 15000.0, 2000, "6:30PM", "Mathikere");
		it=(Integer)session.save(cstu);
		System.out.println(it.intValue());
		
		//3.ading to Old student
		OldStudent ostu = new OldStudent("gaa", "Blore", "Enabled", 15000.0, "Ganesh Soft", "ganesh@g.com", 9.0);
		it=(Integer)session.save(ostu);
		System.out.println(it.intValue());
		
		//4. addding the regular student i,e weeday student
		WeekdayStudent wdstu = new WeekdayStudent("Gaa", "Blore", "Enabled", 15000.0, 2000.0, "6.30PM", "Mathikier", "M.S.C",3,"85.5");
		it=(Integer)session.save(wdstu);
		System.out.println(it.intValue());
		
		//5 Adding the weekend students
		WeekendStudent wstu = new WeekendStudent("cc", "Blore", "Enabled", 15000.0, 2000.0, "6.30PM", "Marathali", "Ganesh Soft", "ganesh@g.com", 14300.0);
		it=(Integer)session.save(wstu);
		System.out.println(it.intValue());
		
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

