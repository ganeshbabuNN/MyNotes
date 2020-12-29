package com.ganesh.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab30 {
	public static void main(String[] args) {
		Transaction tx =null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx=session.beginTransaction();
			System.out.println("1. All the Customers");
			List<Customer> clist1 = session.getNamedQuery("ALLCustomers").list();
			for(Customer c: clist1){
				System.out.println(c);
			}
			
			System.out.println("2. All Active the Customers");
			List<Customer> clist2 = session.getNamedQuery("ActiveCustomers").setString("st", "Active").list();
			for(Customer c: clist2){
				System.out.println(c);
			}
			
			System.out.println("3. Emails of all the customers");
			List<String> elist = session.getNamedQuery("EmailsOfAllCustomers").list();
			for(String str: elist){
				System.out.println(str);
			}
			
			System.out.println("4. Emails and status of all the customers");
			List<Object[]> eplist = session.getNamedQuery("EmailsAndStatusOfAllCustomers").list();
			for(Object obj[]: eplist){
				for(Object o:obj){
					System.out.println(o+"\t");
			}
				System.out.println("");
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
							
	}

}
