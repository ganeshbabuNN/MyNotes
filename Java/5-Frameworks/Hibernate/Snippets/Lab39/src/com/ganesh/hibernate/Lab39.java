package com.ganesh.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab39 {
	public static void main(String[] args) {
		Transaction tx = null;
		try {
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			System.out.println("1.All contacts");
			Query q1 = session.getNamedQuery("GETALLCONTACTS_SP");
			List<Contact> clist1 = q1.list();
			for (Contact c : clist1) {
				System.out.println(c.getContactId() + "\t" + c.getFirstName()
						+ "\t" + c.getLastName() + "\t" + c.getEmail() + "\t"
						+ c.getPhone() + "\t" + c.getStatus());
			}
			
			System.out.println("2.All Active contacts");
			Query q2 = session.getNamedQuery("GETALLACTIVECONTACTS_SP");
			q2=q2.setString("st", "InActive");
			List<Contact> clist2 = q2.list();
			for (Contact c : clist2) {
				System.out.println(c.getContactId() + "\t" + c.getFirstName()
						+ "\t" + c.getLastName() + "\t" + c.getEmail() + "\t"
						+ c.getPhone() + "\t" + c.getStatus());
			}
				
			tx.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			if (tx != null) {
				tx.rollback();
			}
		}
	}
}
