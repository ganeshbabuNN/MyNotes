package com.ganesh.creditcard.service;

import com.ganesh.creditcard.dao.CreditCardDAO;
import com.ganesh.creditcard.dao.DAOFactory;

public class CreditCardService {
	public void deductAmount(int ccno,double amt){
		CreditCardDAO ccdao= DAOFactory.getCreditCardDAO();
		ccdao.deductAmount(ccno, amt);
	}
}
