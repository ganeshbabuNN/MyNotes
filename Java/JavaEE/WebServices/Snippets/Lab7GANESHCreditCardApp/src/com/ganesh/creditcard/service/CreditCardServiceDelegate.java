package com.ganesh.creditcard.service;

import com.ganesh.creditcard.dao.CreditCardDAO;
import com.ganesh.creditcard.dao.DAOFactory;

@javax.jws.WebService(targetNamespace = "http://service.creditcard.ganesh.com/", serviceName = "MyCreditCardService", portName = "CreditCardServicePort", wsdlLocation = "WEB-INF/wsdl/MyCreditCardService.wsdl")
public class CreditCardServiceDelegate {

	com.ganesh.creditcard.service.CreditCardService creditCardService = new com.ganesh.creditcard.service.CreditCardService();

	public void deductAmount(int ccno, double amt) {
		creditCardService.deductAmount(ccno, amt);
	}

}