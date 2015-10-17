package com.ganesh.dao;

import com.ganesh.exception.InsufficientFundException;
import com.ganesh.exception.InvalidAccountException;
import com.ganesh.to.AccountTO;

public interface AccountDAO {
	AccountTO getAccountinfo(int uid);
	public boolean transfer(int sourceAid, int desAid, double amount)
			throws InvalidAccountException, InsufficientFundException;

}
