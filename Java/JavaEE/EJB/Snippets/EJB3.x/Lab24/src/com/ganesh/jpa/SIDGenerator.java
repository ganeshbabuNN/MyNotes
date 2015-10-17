package com.ganesh.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

public class SIDGenerator {
	public static SID getNextSid(String bid){
		SID sid = null;
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx=manager.getTransaction();
			tx.begin();
			String ql1 =("from Student stu where stu.studentId.bid=?");
			Query q1=manager.createQuery(ql1);
			q1.setParameter(1, bid);
			List l1 =q1.getResultList();
			if(l1.size()==0) {
				sid= new SID(bid, "001");
			}else{
				String ql2 =("select max(stu.studentId.sid) from Student stu where stu.studentId.bid=?");
				Query q2=manager.createQuery(ql2);
				q2.setParameter(1, bid);
				String id = q2.getResultList().get(0).toString();
				int x = Integer.parseInt(id);
				x = x+1;
				if(x <= 9){
					sid= new SID(bid, "00"+ x);
				}else if(x <=99){
					sid=sid= new SID(bid, "0"+ x);
				}else{
					sid=sid= new SID(bid, ""+ x);;
				}
			}
			tx.commit();
		}catch(Exception e){
			if(tx!=null){
			tx.rollback();
			}
			e.printStackTrace();
		}
		return sid;
	}
}
