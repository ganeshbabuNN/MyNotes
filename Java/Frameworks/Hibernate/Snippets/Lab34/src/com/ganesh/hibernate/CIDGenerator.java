package com.ganesh.hibernate;

import java.util.List;

import org.hibernate.*;

public class CIDGenerator{

	public static String getNextCid() {
		Transaction tx = null;
		String sid="C-001";
		try{
			SessionFactory sf= AHibernateUtil.getSessionFactory();
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
					sid="C-0" + x;
				}else if(x<=999){
					sid="C-"+x;
							
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
