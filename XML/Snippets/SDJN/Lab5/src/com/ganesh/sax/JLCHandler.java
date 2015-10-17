package com.ganesh.sax;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class JLCHandler extends DefaultHandler {
	
	public void startDocument() throws SAXException {
		System.out.println("Document started");
	}
	
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
		System.out.println(localName+" Element is started");
		if(attributes.getLength() >=1){
			System.out.println(attributes.getLocalName(0)+"------"+ attributes.getValue(0));
			System.out.println(attributes.getLocalName(1)+"-------" + attributes.getValue(1));
			System.out.println(attributes.getLocalName(2)+"-------"+ attributes.getValue(2));
		}
		System.out.println(localName);
	}
	public void characters(char[] ch, int start, int length)
			throws SAXException {
		String str = new String(ch, start, length);
		System.out.println("Character data is found  "+str);
	}
	public void endElement(String uri, String localName, String qName)
			throws SAXException {
		System.out.println(localName+"  element is ended  ");
	}
	public void endDocument() throws SAXException {
		System.out.println("document is ended");
	}
	
}


