package com.ganesh.spring.jpa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTemplate;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

public class JpaCustomerDAO implements CustomerDAO {
	
	@Autowired
	JpaTemplate jpaTemp=null;
	
	@Autowired
	JpaTransactionManager txManager=null;
	
	public void addCustomer(CustomerTO cto) {
		Customer cust = new Customer(cto.getCid(),cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity());
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		jpaTemp.persist(cust);
		txManager.commit(ts);
	}

	public void updateCustomer(CustomerTO cto) {
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		Customer c =(Customer)jpaTemp.find(Customer.class,cto.getCid());
		c.setCid(cto.getCid());
		c.setEmail(cto.getEmail());
		c.setPhone(cto.getPhone());
		c.setCity(cto.getCity());
		jpaTemp.merge(c);
		txManager.commit(ts);
	}

	public void deleteCustomer(int cid) {
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		Customer c =(Customer)jpaTemp.find(Customer.class,cid);
		jpaTemp.remove(c);
		txManager.commit(ts);		
	}

	public CustomerTO getCustomerByCid(int cid) {
		Customer c =(Customer)jpaTemp.find(Customer.class,cid);
		CustomerTO cto = new CustomerTO(c.getCid(), c.getCname(), c.getEmail(), c.getPhone(), c.getCity());
		return cto;
	}

}
