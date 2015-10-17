package com.ganesh.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.ganesh.hibernate.CHibernateUtil;
import com.ganesh.hibernate.Student;
import com.ganesh.to.StudentTO;

public class HibernateStudentDAO implements StudentDAO {

	public List<StudentTO> getStudentByBatchId(String bid) {
		List<StudentTO> list = null;
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx=session.beginTransaction();
			Query qry= session.createQuery("from Student stu where stu.bid=?");
			qry.setString(0, bid);
			List<Student> slist=qry.list();
			if(slist.size()>0){
				list = new ArrayList<StudentTO>();
				Iterator<Student> it = slist.iterator();
				while(it.hasNext()){
					Student stu = (Student)it.next();
					StudentTO sto = new StudentTO(stu.getSid(),stu.getBid(),stu.getName(),stu.getEmail(),stu.getPhone());
					list.add(sto);		
			}
		}
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null)
				tx.rollback();
		}
		return list;
	}

}
