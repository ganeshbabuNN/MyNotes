package com.ganesh.spring.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ganesh.spring.hibernate.Contact;
import com.ganesh.spring.to.ContactTO;

public class HibernateContactDAO implements ContactDAO{
	
	@Autowired
	HibernateTemplate htemp;

	
	public int addContact(ContactTO cto) {
		System.out.println("HibernateContactDAO-addContact()");
		Contact ct= new Contact(cto.getFname(),cto.getLname(),cto.getEmail(),cto.getPhone());
		Integer cid=(Integer)htemp.save(ct);
		return cid;
	}

	public ContactTO getContactByEmail(String email) {
		System.out.println("HibernateContactDAO-getContactByEmail()");
		String hql="from Contact ct where ct.email=?";
		List<Contact> list=htemp.find(hql,email);
		ContactTO cto= null;
		if(list.size()>0){
			Contact ct=list.get(0);
			cto= new ContactTO(ct.getCid(), ct.getFname(), ct.getLname(), ct.getEmail(),ct.getPhone());
		}
		return cto;
	}

	public void updateContact(ContactTO cto) {
		System.out.println("HibernateContactDAO-updateContact()");
		Contact ct = new Contact(cto.getCid(), cto.getFname(), cto.getLname(), cto.getEmail(),cto.getPhone());
		htemp.update(ct);		
	}

}
