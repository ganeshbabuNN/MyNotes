package com.ganesh.spring.jpa;

import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;

import org.hibernate.Session;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.orm.jpa.vendor.HibernateJpaDialect;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;

public class JpaDialect extends HibernateJpaDialect{
	@Override
	public Object beginTransaction(EntityManager entityManager,
			TransactionDefinition definition) throws PersistenceException,
			SQLException, TransactionException {
		Session session=(Session)entityManager.getDelegate();
		DataSourceUtils.prepareConnectionForTransaction(session.connection(), definition);
		entityManager.getTransaction().begin();
		return prepareTransaction(entityManager, definition.isReadOnly(), definition.getName());
	}
	
}
