package com.ganesh.spring.service;

import com.ganesh.spring.to.ContactTO;

public interface ContactService {
	public int addContact(ContactTO cto);
	public ContactTO getContactByEmail(String email);
	public void updateContact(ContactTO cto);

}
