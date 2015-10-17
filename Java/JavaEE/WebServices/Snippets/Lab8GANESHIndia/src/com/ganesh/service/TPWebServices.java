package com.ganesh.service;

import com.ganesh.ejb3.webservice.account.AccountBean;
import com.ganesh.ejb3.webservice.account.AccountBeanService;
import com.ganesh.ejb3.webservice.credicard.CreditCardBean;
import com.ganesh.ejb3.webservice.credicard.CreditCardBeanService;

public class TPWebServices {
	public void deposit(int accno,double amt){
		AccountBeanService myas= new AccountBeanService();
		AccountBean asd = myas.getAccountBeanPort();
		asd.deposit(accno, amt);		
	}
	public void deductAmount(int ccno,double amt){
		CreditCardBeanService mycc= new CreditCardBeanService();
		CreditCardBean ccsd=mycc.getCreditCardBeanPort();
		ccsd.deductAmout(ccno, amt);
	}
}
