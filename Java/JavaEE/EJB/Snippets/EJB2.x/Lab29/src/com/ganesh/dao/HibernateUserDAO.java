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
import com.ganesh.hibernate.User;
import com.ganesh.to.AccountTO;
import com.ganesh.to.UserTO;

public class HibernateUserDAO implements UserDAO {

	public UserTO verifyUser(String username, String password) {
		UserTO uto = null;
		Transaction tx = null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx= session.beginTransaction();
			Query qry = session.createQuery("from User user where user.username=? and user.password=?");
			qry.setString(0, username);
			qry.setString(1, password);
			List list=qry.list();
			if(list.size()>0){
				User user = (User)list.get(0);
				uto=new UserTO();
				uto.setEmail(user.getEmail());
				uto.setFullName(user.getFullName());
				uto.setPassword(user.getPassword());
				uto.setPhone(user.getPhone());
				uto.setUserId(user.getUserId());
				uto.setUsername(user.getUsername());
				AccountTO ato= new AccountTO();
				ato.setAccType(user.getAccount().getAccType());
				ato.setAid(user.getAccount().getAid());
				ato.setBalance(user.getAccount().getBalance());
				uto.setAccount(ato);
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return uto;
	}

	public boolean changePassword(int uid, String npwd) {
		boolean changed=false;
		Transaction tx =null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx= session.beginTransaction();
			Object obj=session.get(User.class, new Integer(uid));
			if(obj!=null){
				User user=(User)obj;
				user.setPassword(npwd);
				session.update(user);
				changed=true;
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return changed;
	}

	public boolean updateInfo(int uuid, String email, long phone) {
		boolean changed=false;
		Transaction tx =null;
		try{
			SessionFactory sf = CHibernateUtil.getSessionFactory();
			Session session = sf.openSession();
			tx= session.beginTransaction();
			Object obj =session.get(User.class, new Integer(uuid));
			if(obj!=null){
				User user =(User)obj;
				user.setEmail(email);
				user.setPhone(phone);
				changed=true;
			}
			tx.commit();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		return changed;
	}
	
	
}
