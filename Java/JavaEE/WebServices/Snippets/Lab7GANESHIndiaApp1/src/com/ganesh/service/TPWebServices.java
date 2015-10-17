package com.ganesh.service;

import com.ganesh.webservice.account.AccountServiceDelegate;
import com.ganesh.webservice.account.MyAccountService;
import com.ganesh.webservice.creditcard.CreditCardServiceDelegate;
import com.ganesh.webservice.creditcard.MyCreditCardService;

public class TPWebServices {
	public void deposit(int accno,double amt){
		MyAccountService myas= new MyAccountService();
		AccountServiceDelegate asd = myas.getAccountServicePort();
		asd.deposit(accno, amt);		
	}
	public void deductAmount(int ccno,double amt){
		MyCreditCardService mycc= new MyCreditCardService();
		CreditCardServiceDelegate ccsd=mycc.getCreditCardServicePort();
		ccsd.deductAmount(ccno, amt);
	}
}
