package com.ganesh.online.ws.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ganesh.online.ws.StudentTO;
import com.ganesh.online.ws.dao.StudentDAO;
import com.ganesh.online.ws.hibernate.Student;
import com.ganesh.util.CHibernateUtil;

public class HibernateStudentDAO implements StudentDAO {

	public List<StudentTO> getAllStudents() {
		List<StudentTO> studList = null;
		Transaction tx=null;
		Session sess=null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			sess = sf.openSession();
			tx=sess.beginTransaction();
			List<Student> list = sess.createQuery("from Student st").list();
			if(list.size() > 0){
				studList= new ArrayList<StudentTO>();
			}
			Iterator<Student> it = list.iterator();
			while(it.hasNext()){
				Student s =(Student)it.next();
				studList.add(new StudentTO(s.getSid(),s.getSname(),s.getEmail(),s.getPhone()));
			}tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null)
				tx.rollback();
		}finally{
			if(sess!=null)
				sess.close();
		}
		return studList;
	}

	public StudentTO getStudent(int id) {
		 StudentTO stud=null;
		 Transaction tx=null;
		 Session sess=null;
		 try{
			 SessionFactory sf =CHibernateUtil.getSessionFactory();
			 sess = sf.openSession();
			 tx=sess.beginTransaction();
			 Object obj = sess.get(Student.class, id);
			 if(obj!=null){
				 Student st=(Student)obj;
				 stud= new StudentTO(st.getSid(), st.getSname(), st.getEmail(), st.getPhone());
			 }
			 tx.commit();
		 }catch(Exception e){
			 e.printStackTrace();
			 if(tx!=null)
				 tx.rollback();
		 }finally{
			 if(sess!=null)
				 sess.close();
		 }
		 return stud;
	}

	public void addStudent(String name, String email, long phone) {
		Transaction tx=null;
		 Session sess=null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
		     sess = sf.openSession();
			 tx=sess.beginTransaction();
			Student stud= new Student();
			stud.setSname(name);
			stud.setEmail(email);
			stud.setPhone(phone);
			sess.save(stud);
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null)
				tx.rollback();
		}finally{
			if(sess!=null)
				sess.close();
		}
	}
	
}
