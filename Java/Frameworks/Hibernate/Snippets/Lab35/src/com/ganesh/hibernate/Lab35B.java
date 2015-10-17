package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab35B {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			Object obj = session.get(Student.class, new SID("32","001"));
			if(obj== null){
				System.out.println("student Not Found");
			}else {
				Student stu1=(Student)obj;
				System.out.println(stu1.getStudentld().getBid());
				System.out.println(stu1.getStudentld().getSid());
				System.out.println(stu1.getSname());
				System.out.println(stu1.getEmail());
				System.out.println(stu1.getPhone());
				System.out.println(stu1);
			}			
			
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
		}
	}

}
