package com.ganesh.hibernate;

import java.util.List;

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
		String hql="from Customer c where c.email=?";
		Customer c =(Customer)HibernateTemplate.findObject(hql, email);
		return c;
	}
	public Customer getCustomerByCardNo(int ccno) {
		String hql="from Customer c where c.cardNo=?";
		Customer c=(Customer)HibernateTemplate.findObject(hql, ccno);
		return c;
	}
	public List<Customer> getAllCustomer() {
		String hql="from Customer c";
		List<Customer> list =HibernateTemplate.getList(hql);
		return list;
	}

	public List<Customer> getAllCustomers(int start, int total) {
		String hql="from Customer c";
		List<Customer> list =HibernateTemplate.findList(hql, start,total);
		return list;
	}		
	public List<Customer> getCustomersByCity(String city) {
		String hql="from Customer c where city=?";
		List<Customer> list =HibernateTemplate.getList(hql, city);
		return list;
	}

	public List<Customer> getCustomersByCity(String city, int start, int total) {
		 String hql="from Customer c where c.city=?";
		 List<Customer> list =HibernateTemplate.findList(hql, start, total, city);
		return list;
	}
	
	public List<Customer> getCustomers(String city, String cardType) {
		String hql ="from Customer c where c.city=? and c.cardType=?";
		List<Customer> list=HibernateTemplate.getList(hql, city,cardType);
		return list;
	}
	public List<Customer> getCustomers(String city, String cardType, int start,
			int total) {
		 String hql="from Customer c where.city=? and c.cardType=?";
		 List<Customer> list = HibernateTemplate.findList(hql, start, total, city,cardType);
		return list;
	}
	public List<Customer> getCustomers(String city, String cardType,
			String status) {
			String hql ="from Customer c where c.city=? and c.cardType=? and c.status=?";
			List<Customer> list =HibernateTemplate.getList(hql, city,cardType,status);
		return list;
	}
	
	public List<Customer> getCustomers(String city, String cardType,
			String status, int start, int total) {
		String hql="from Customer c where c.city=? and c.cardType=? and c.status=?";
		List<Customer> list=HibernateTemplate.findList(hql, start, total, city,cardType,status);
		return list;
	}
	
	public List<Customer> getCustomersByBal(double bal) {
		String hql="from Customer c where c.cardBal=?";
		List<Customer> list=HibernateTemplate.getList(hql, bal);
		return list;
	}
	public List<Customer> getCustomersByBal(double bal, int start, int total) {
		String hql="from Customer c where c.cardBal=?";
		List<Customer> list=HibernateTemplate.findList(hql, start, total, bal);
		return list;
	}
	
	public List<Customer> getCustomersByCardType(String cardType) {
		String hql="from Customer c where c.cardType=?";
		List<Customer> list=HibernateTemplate.getList(hql, cardType);
		return list;
	}

	public List<Customer> getCustomersByCardType(String cardType, int start,
			int total) {
		String hql="from Customer c where c.cardType=?";
		List<Customer> list=HibernateTemplate.findList(hql,start,total,cardType);
		return list;
	}
	public List<Customer> getCustomersByName(String name) {
		String hql="from Customer c where c.cname=?";
		List<Customer> list=HibernateTemplate.getList(hql,name);
		return list;
	}
	public List<Customer> getCustomersByName(String name, int start, int total) {
		String hql="from Customer c where c.cname=?";
		List<Customer> list=HibernateTemplate.findList(hql, start, total, name);
		return list;
	}
	
	public List<Customer> getCustomersByStatus(String status) {
		String hql="from Customer c where c.status=?";
		List<Customer> list=HibernateTemplate.getList(hql,status);
		return list;
	}
	public List<Customer> getCustomersByStatus(String status, int start,
			int total) {
		String hql="from Customer c where c.status=?";
		List<Customer> list=HibernateTemplate.findList(hql, start, total, status);
		return list;
	}
	

}
