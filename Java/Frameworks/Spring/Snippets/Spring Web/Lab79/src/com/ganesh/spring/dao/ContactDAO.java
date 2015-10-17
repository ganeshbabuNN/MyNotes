package com.ganesh.spring.dao;

import com.ganesh.spring.to.ContactTO;

public interface ContactDAO {
	public int addContact(ContactTO cto);
	public ContactTO getContactByEmail(String email);
	public void updateContact(ContactTO cto);
}
