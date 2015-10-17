package com.ganesh.hibernate;



import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab24B {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			
			CreditCard cc1 = new CreditCard(1111, "Visa", 2332, new Date());
			session.save(cc1);
			SilverCustomer c1 = new SilverCustomer("Ganesh", "g@l.com", 1332, "Blore", 23, "gg@l.com");
			c1.setCcard(cc1);
			session.save(c1);
			Map<String,String> refs=new HashMap<String, String>();
			refs.put("AA", "11");
			refs.put("BB","22");
			CreditCard cc2 = new CreditCard(222, "SBI", 999, new Date());
			session.save(cc2);
			GoldCustomer c2 = new GoldCustomer("Ganesh", "ganesh@l.com", 1234, 4223, refs, 100);
			c2.setCcard(cc2);
			session.save(c2);
			
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
