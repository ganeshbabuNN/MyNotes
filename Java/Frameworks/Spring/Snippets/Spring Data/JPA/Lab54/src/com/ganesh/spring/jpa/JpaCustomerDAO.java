package com.ganesh.spring.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaCallback;
import org.springframework.orm.jpa.JpaTemplate;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.support.JpaDaoSupport;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.mchange.v2.resourcepool.ResourcePool.Manager;

public class JpaCustomerDAO extends JpaDaoSupport implements CustomerDAO {
	
	@Autowired
	JpaTemplate jpaTemp=null;
	
	@Autowired
	JpaTransactionManager txManager=null;
	@Override
	public void addCustomer(CustomerTO cto) {
		final Customer cust = new Customer(cto.getCid(),cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity());
		JpaCallback<EntityManager> jc = new JpaCallback<EntityManager>() {
			@Override
			public EntityManager doInJpa(EntityManager manager)
					throws PersistenceException {
				manager.persist(cust);			
				return manager;
			}
		};
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		getJpaTemplate().execute(jc);
		txManager.commit(ts);
	}
	

}
