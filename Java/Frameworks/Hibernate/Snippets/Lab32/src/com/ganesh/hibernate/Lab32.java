package com.ganesh.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab32 {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			Customer cust=new Customer("C-101", "sd", "gb@gmail.com", 13234234);
			String customerld=session.save(cust).toString();
			System.out.println(customerld);
			session.save(cust);
			Customer cu=(Customer)session.load(Customer.class, "297ec110494148cc01494148cda90001");
			System.out.println(cu);
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
