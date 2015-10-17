package com.ganesh.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ganesh.exception.InsufficientFundException;
import com.ganesh.exception.InvalidAccountException;
import com.ganesh.hibernate.Account;
import com.ganesh.hibernate.CHibernateUtil;
import com.ganesh.to.AccountTO;

public class HibernateAccountDAO implements AccountDAO{

	public AccountTO getAccountinfo(int uid) {
		AccountTO ato = null;
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx= session.beginTransaction();
			Query qry = session.createQuery("from Account acc where acc.user.userId=?");
			qry.setInteger(0, uid);
			List list = qry.list();
			if(list.size()>0){
				Account acc = (Account)list.get(0);
				ato= new AccountTO();
				ato.setAccType(acc.getAccType());
				ato.setAid(acc.getAid());
				ato.setBalance(acc.getBalance());
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return ato;
	}

	public boolean transfer(int sourceAid, int desAid, double amount)
			throws InvalidAccountException, InsufficientFundException {
		boolean transfered = false;
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx= session.beginTransaction();
			Object dobj=session.get(Account.class, new Integer(desAid));
			if(dobj==null){
				throw new InvalidAccountException(desAid);
			}
			Query qry= session.createQuery("from Account acc where acc.user.userId=?");
			qry.setInteger(0, sourceAid);
			List list = qry.list();
			if(list.size()>0){
				Account sacc = (Account)list.get(0);
				if(sacc.getBalance()<amount){
					throw new InsufficientFundException();
				}
				Account dacc=(Account)dobj;
				dacc.setBalance(dacc.getBalance()+amount);
				dacc.setBalance(sacc.getBalance()-amount);
				session.update(dacc);
				session.update(sacc);
			}
			
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return transfered;
	}
}
