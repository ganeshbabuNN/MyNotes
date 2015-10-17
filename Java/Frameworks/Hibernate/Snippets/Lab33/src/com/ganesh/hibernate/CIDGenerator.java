package com.ganesh.hibernate;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;
import org.hibernate.engine.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

public class CIDGenerator implements IdentifierGenerator{

	public Serializable generate(SessionImplementor si, Object obj)
			throws HibernateException {
		Transaction tx = null;
		String sid="C-001";
		try{
			Configuration cfg = new Configuration().configure();
			SessionFactory sf= cfg.buildSessionFactory();
			Session s = sf.openSession();
			 tx = s.beginTransaction();
			Query q1 =s.createQuery("from Customer cust");
			int size = q1.list().size();
			if(size!=0){
				Query query = s.createQuery("select max(cust.cid) from Customer cust");
				List list = query.list();
				System.out.println(list.size());
				Object o = list.get(0);
				System.out.println(o);
				String id="";
				id=o.toString();
				String p2 = id.substring(2);
				int x = Integer.parseInt(p2);
				x = x+1;
				if(x<=9) {
					sid="C-00" + x;
				}else if(x<=99) {
					sid="C-" + x;
				}
			}
			tx.commit();
			s.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return sid;
	}
	
}
