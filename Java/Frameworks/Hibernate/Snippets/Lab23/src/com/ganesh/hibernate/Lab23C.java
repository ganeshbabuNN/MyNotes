package com.ganesh.hibernate;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab23C {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			
			Customer cust =(Customer)session.load(Customer.class, 1);
			
			Book b1 =(Book)session.load(Book.class, 1);
			OrderItem oi1= new OrderItem(1, 100);
			oi1.setBook(b1);
			session.save(oi1);
			
			Book b2 =(Book)session.load(Book.class, 1);
			OrderItem oi2=new OrderItem(2,200);
			oi2.setBook(b2);
			session.save(oi2);
			
			ShippingAddress add= new ShippingAddress("AMP", "HYD", "AP");
			session.save(add);
			Set<OrderItem> orderitems= new HashSet<OrderItem>();
			orderitems.add(oi1);
			orderitems.add(oi2);
			Order order = new Order(3, 300.0, new Date(), "New");
			order.setAddress(add);
			order.setOrderitems(orderitems);
			order.setCustomer(cust);
			session.save(order);
			
			
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
