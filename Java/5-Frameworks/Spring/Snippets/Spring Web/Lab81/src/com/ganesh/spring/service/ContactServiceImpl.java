package com.ganesh.spring.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.ganesh.spring.dao.ContactDAO;
import com.ganesh.spring.to.ContactTO;


public class ContactServiceImpl implements ContactService{
	
	@Autowired
	ContactDAO cdao;
	
	public int addContact(ContactTO cto) {
		return cdao.addContact(cto);
	}

	public ContactTO getContactByEmail(String email) {
		return cdao.getContactByEmail(email);
	}
	
	public void updateContact(ContactTO cto) {
		cdao.updateContact(cto);		
	}
}
