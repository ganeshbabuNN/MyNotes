package com.ganesh.sax;

import java.util.List;

import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

public class Lab6 {
	public static void main(String[] args) {
		try{
			//step 1
			XMLReader reader = XMLReaderFactory.createXMLReader("org.apache.xerces.parsers.SAXParser");
			//step 2
			JLCHandler ch= new JLCHandler();
			//step 3
			reader.setContentHandler(ch);
			//step 4
			reader.setDTDHandler(ch);
			//step 5
			reader.setErrorHandler(ch);
			//step 6
			reader.setFeature("http://xml.org/sax/features/validation", true);
			//step 7
			reader.parse("src/customers.xml");
			List<CustomerTO> list = ch.getCustomers();
			System.out.println("Customers Found:"+ list.size());
			for(CustomerTO cto :list){
				System.out.println(cto); // to string() implementations.
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
