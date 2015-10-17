package com.ganesh.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ganesh.hibernate.Account;
import com.ganesh.hibernate.CHibernateUtil;
import com.ganesh.to.AccountTO;

public class HibernateAccountDAO implements AccountDAO{

	public void addAccount(AccountTO ato) {
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tx= session.beginTransaction();
			Account acc = new Account(ato.getAtype(),ato.getBcode(),ato.getBal());
			session.save(acc);
			tx.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public double getBalance(int accno) {
		double bal =0.0;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tx= session.beginTransaction();
			Account acc = (Account)session.load(Account.class, new Integer(accno));
			bal=acc.getBal();
			tx.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return bal;
	}

	public void deposit(int accno, double amt) {
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tx= session.beginTransaction();
			Account acc = (Account)session.load(Account.class, new Integer(accno));
			double cbal = acc.getBal();
			double nbal = cbal+amt;
			acc.setBal(nbal);
			session.update(acc);
			tx.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public void withdraw(int accno, double amt) {
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			Transaction tx= session.beginTransaction();
			Account acc = (Account)session.load(Account.class, new Integer(accno));
			double cbal = acc.getBal();
			double nbal = cbal-amt;
			acc.setBal(nbal);
			session.update(acc);
			tx.commit();
			session.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
