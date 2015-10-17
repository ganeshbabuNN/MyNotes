package com.ganesh.spring.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

public class JdbcAccountDAO implements AccountDAO {
	
	@Autowired
	JdbcTemplate jdbcTemp=null;
	
	@Autowired
	DataSourceTransactionManager txManager = null;
	
	@Override
	public void deposit(int accno, double amt) {
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		String sql="select bal from accounts where accno=?";
		int x = jdbcTemp.queryForInt(sql,accno);
		double cbal = new Integer(x).doubleValue();
		double nbal= cbal+amt;
		String sql1="update accounts set bal=? where accno=?";
		jdbcTemp.update(sql1, nbal,accno);
		txManager.commit(ts);
	}

	@Override
	public double getBalance(int accno) {
		String sql="select bal from accounts where accno=?";
		int x = jdbcTemp.queryForInt(sql,accno);
		double cbal = new Integer(x).doubleValue();
		return cbal;
	}
	
	@Override
	public void fundsTransafer(int saccno, int daccno, double amt) {
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		try{
		String sql1="select bal from accounts where accno=?";
		String sql2="update accounts set bal=? where accno=?";
		
		int y = jdbcTemp.queryForInt(sql1,daccno);
		double dcbal = new Integer(y).doubleValue();
		System.out.println("Before Deposit " + dcbal);
		double dnbal=dcbal+amt;
		jdbcTemp.update(sql2,dnbal,daccno);
		y=jdbcTemp.queryForInt(sql1,daccno);
		dcbal=new Integer(y).doubleValue();
		System.out.println("After Deposit "+dcbal);
		int x=jdbcTemp.queryForInt(sql1,saccno);
		double scbal= new Integer(x).doubleValue();
		if(scbal>=5000+amt){
			double snbal=scbal-amt;
			jdbcTemp.update(sql2,snbal,saccno);
		}else{
			throw new InSufficientFundsException();
		}
		txManager.commit(ts);
		}catch(Exception e){
			txManager.rollback(ts);
			e.printStackTrace();
		}
	}
	
	@Override
	public void withdrawal(int accno, double amt) {
		TransactionDefinition txDef = new DefaultTransactionDefinition();
		TransactionStatus ts = txManager.getTransaction(txDef);
		String sql="select bal from accounts where accno=?";
		int x =jdbcTemp.queryForInt(sql,accno);
		double cbal= new Integer(x).doubleValue();
		if(cbal>=5000+amt){
			double nbal=cbal-amt;
			String sql1="update accounts set bal=? where accno=?";
			jdbcTemp.update(sql1,nbal,accno);
		}else{
			throw new InSufficientFundsException();
		}
		txManager.commit(ts);
	}

	

	
	

}
