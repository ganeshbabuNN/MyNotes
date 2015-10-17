package com.ganesh.sax;

import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

public class Lab5 {
	public static void main(String[] args) {
		try{
			XMLReader reader = XMLReaderFactory.createXMLReader("org.apache.xerces.parsers.SAXParser");
			reader.setContentHandler(new JLCHandler());
			reader.parse("src/ganesh.xml");
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
}
