package com.ganesh.hibernate;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Expression;

public class HibernateCustomerDAO implements CustomerDAO {
	
	public int addCustomer(Customer cust) {
		Integer it=(Integer)HibernateTemplate.save(cust);
		return it.intValue();
	}	
	public void deleteCustomer(int cid) {
		HibernateTemplate.delete(Customer.class, cid);
	}	
	public Customer getCustomerByCid(int cid) {
		Customer c=(Customer)HibernateTemplate.load(Customer.class, cid);
		HibernateTemplate.load(Customer.class, cid);
		return c;
	}
	public void updateCustomer(Customer cust) {
		HibernateTemplate.update(cust);
	}
	public Customer getCustomerByEmail(String email) {
		Transaction tx =null;
		Customer cust =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("email", email));
			cust=(Customer)ct.list().get(0);
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return cust;
	}
	public Customer getCustomerByCardNo(int ccno) {
		Transaction tx =null;
		Customer cust =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cardNo", ccno));
			cust=(Customer)ct.list().get(0);
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return cust;
	}
	public List<Customer> getAllCustomer() {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}

	public List<Customer> getAllCustomers(int start, int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}		
	public List<Customer> getCustomersByCity(String city) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("city", city));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}

	public List<Customer> getCustomersByCity(String city, int start, int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("city", city));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Customer> getCustomers(String city, String cardType) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.and(Expression.eq("city", city),Expression.eq("cardType", cardType)));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	public List<Customer> getCustomers(String city, String cardType, int start,
			int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.and(Expression.eq("city", city),Expression.eq("cardType", cardType)));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	public List<Customer> getCustomers(String city, String cardType,
			String status) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.and(
					Expression.and(Expression.eq("city", city), 
							Expression.eq("cardType", cardType)),
							Expression.eq("status", status)));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Customer> getCustomers(String city, String cardType,
			String status, int start, int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.and(
					Expression.and(Expression.eq("city", city), 
							Expression.eq("cardType", cardType)),
							Expression.eq("status", status)));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Customer> getCustomersByBal(double bal) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cardBal", bal));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	public List<Customer> getCustomersByBal(double bal, int start, int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cardBal", bal));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Customer> getCustomersByCardType(String cardType) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cardType", cardType));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}

	public List<Customer> getCustomersByCardType(String cardType, int start,
			int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cardType", cardType));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	public List<Customer> getCustomersByName(String name) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cname", name));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	public List<Customer> getCustomersByName(String name, int start, int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("cname", name));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Customer> getCustomersByStatus(String status) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("status", status));
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	public List<Customer> getCustomersByStatus(String status, int start,
			int total) {
		Transaction tx =null;
		List<Customer> list =null;
		try{
			SessionFactory sf =CHibernateUtil.getSessionFactory();
			Session session =sf.openSession();
			tx=session.beginTransaction();
			Criteria ct = session.createCriteria(Customer.class);
			ct=ct.add(Expression.eq("status", status));
			ct=ct.setFirstResult(start);
			ct=ct.setMaxResults(total);
			list=ct.list();
			tx.commit();
			session.close();
		}catch(Exception e){
			if(tx!=null){
				tx.rollback();
			}
			e.printStackTrace();
		}
		return list;
	}
	

}
