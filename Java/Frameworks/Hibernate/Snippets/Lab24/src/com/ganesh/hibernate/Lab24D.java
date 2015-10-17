package com.ganesh.hibernate;

import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Lab24D {
	public static void main(String[] args) {
		Transaction tx = null;
		try{
			SessionFactory sf = AHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx = session.beginTransaction();
			
			Customer cust =(Customer)session.load(Customer.class, 1);
			System.out.println("********Customer info");
			System.out.println(cust.getCid()+"\t" +cust.getCname()+"\t" +cust.getEmail()+"\t" +cust.getPhone());
			
			CreditCard cc = cust.getCcard();
			System.out.println("**********CC Info");
			System.out.println(cc.getCcid()+"\t" +cc.getCcno()+"\t" +cc.getCode()+"\t" +cc.getCtype());
			
			Set<Order> ods = cust.getOrders();
			for(Order o:ods){
				System.out.println("**********Order info");
				System.out.println(o.getOrderld()+"\t" +o.getTotalQty()+"\t" +o.getTotalCost()+"\t" +o.getStatus());
			ShippingAddress add=o.getAddress();
			System.out.println("***Shipping Address:#" +"\t" +o.getOrderld());
			System.out.println(add.getAddid()+"\t" +add.getStreet()+"\t" +add.getCity()+"\t" +add.getState());
			Set<OrderItem> items=o.getOrderitems();
			System.out.println("*******Order Items:#"+o.getOrderld());
			for(OrderItem oit: items){
				System.out.println(oit.getOtid()+"\t" +oit.getCost()+"\t" +oit.getQty()+"\t" +oit.getBook().getBid());
				}			
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
			if(tx!=null){
				tx.rollback();
			}
		}
	}

}
