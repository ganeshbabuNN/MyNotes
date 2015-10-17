package com.ganesh.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

public class SIDGenerator {
	public static String getNextSid(){
		String sid ="JLC-001";
		EntityTransaction tx = null;
		try{
			EntityManagerFactory factory =JPAUtil.getEntityManagerFactory();
			EntityManager manager = factory.createEntityManager();
			tx=manager.getTransaction();
			tx.begin();
			Query q1= manager.createQuery("from Student stu");
			int size = q1.getResultList().size();
			if(size!=0){
				Query query =manager.createQuery("select max(stu.sid) from Student stu");
				List list = query.getResultList();
				System.out.println(list.size());
				Object o = list.get(0);
				System.out.println(o);
				String id="";
				id=o.toString();
				String p2 = id.substring(4);
				int x = Integer.parseInt(p2);
				x = x+1;
				if(x <= 9){
					sid="JLC-00"+x;
				}else if(x <=99){
					sid="JLC-0"+x;
				}else if(x<=999){
					sid="JLC"+x;
				}
			}
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		return sid;
	}
}
