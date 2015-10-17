package com.ganesh.sax;

import java.util.ArrayList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

public class JLCHandler extends DefaultHandler {
	boolean customer=false;
	boolean cname=false;
	boolean email = false;
	boolean phone=false;
	boolean city=false;
	CustomerTO cto = null;
	List<CustomerTO> customers = new ArrayList<CustomerTO>();
	
	public List<CustomerTO> getCustomers() {
		return customers;
	}
	
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
		if(localName.equals("customer")){
			customer=true;
			cto = new CustomerTO();
			cto.setCid(attributes.getValue(0));
			cto.setStatus(attributes.getValue(1));
		}else if(localName.equals("cname")){
			email=true;
		}else if(localName.equals("phone")){
			phone=true;
		}else if (localName.equals("city")){
			city=true;
		}
	}
	public void characters(char[] ch, int start, int length)
			throws SAXException {
		String str = new String(ch, start, length);
		if(cname)
			cto.setCid(str);
		else if(email)
			cto.setEmail(str);
		else if(phone)
			cto.setPhone(str);
		else if(city)
			cto.setCity(str);
	}
	
	public void endElement(String uri, String localName, String qName)
			throws SAXException {
		if(localName.equals("customer")){
			customers.add(cto);
			customer=false;
		}else if(localName.equals("cname")){
			cname=false;
		}else if(localName.equals("email")){
			email=false;
		}else if(localName.equals("phone")){
			phone=false;
		}else if(localName.equals("city")){
			city=false;
		}
	}
	
	public void error(SAXParseException e) throws SAXException {
		System.out.println("Error found while reading customers.xml");
		e.printStackTrace();
	}
}
