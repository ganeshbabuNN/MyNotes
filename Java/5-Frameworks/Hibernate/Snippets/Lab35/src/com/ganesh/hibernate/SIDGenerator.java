package com.ganesh.hibernate;

import java.util.List;

import org.hibernate.*;

public class SIDGenerator {

	public static SID getNextCid(String bid) {
		SID sid = null;
		Transaction tx = null;
		try{
			SessionFactory sf= CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			 tx = session.beginTransaction();
			String hql1="from Student stu where stu.studentld.bid=?";
			Query q1 =session.createQuery(hql1);
			q1.setString(0, bid);
			List l1=q1.list();
			if(l1.size()==0){
				sid= new SID(bid, "001");
			}else {
				String hql = "select max(cust.cid) from Student stu where stu.studentld.bid=?";
				Query q = session.createQuery(hql);
				q.setString(0, bid);
				String id = q.list().get(0).toString();
				int x = Integer.parseInt(id);
				x=x+1;
				if(x<=9){
					sid= new SID(bid, "00"+x);
				}else if(x <=99){
					sid = new SID(bid, "0"+ x);
				}else {
					sid = new SID(bid, ""+x);
				}
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return sid;
	}
}
