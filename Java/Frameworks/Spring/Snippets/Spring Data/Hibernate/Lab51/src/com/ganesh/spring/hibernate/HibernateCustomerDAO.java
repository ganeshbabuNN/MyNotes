package com.ganesh.spring.hibernate;

import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class HibernateCustomerDAO extends HibernateDaoSupport implements CustomerDAO{
	
	@Autowired
	HibernateTemplate hibernateTemp;

	@Override
	public void addCustomer(CustomerTO cto) {
		final Customer cust = new Customer(cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity());
		HibernateCallback<Session> hc = new HibernateCallback<Session>() {
			@Override
			public Session doInHibernate(Session session)
					throws HibernateException, SQLException {
				session.save(cust);
				return session;
			}
		};
		getHibernateTemplate().execute(hc);
	}

	
	
}
