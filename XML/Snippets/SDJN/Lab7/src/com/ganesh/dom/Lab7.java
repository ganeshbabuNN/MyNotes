/// a) displaying emails of all customers;
///b) displaying cid of all customers
package com.ganesh.dom;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class Lab7 {
	public static void main(String[] args) {
		try{
		DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
		DocumentBuilder db= dbf.newDocumentBuilder();
		Document doc=db.parse("src/customers.xml");
		System.out.println("******Email of all customers******");
		NodeList elist=doc.getElementsByTagName("email");//elements by
		System.out.println(elist.getLength());
		for(int i=0;i<elist.getLength();i++){
			Element ele = (Element)elist.item(i);
			CharacterData cd=(CharacterData)ele.getFirstChild();
			String em = cd.getData();
			System.out.println(em);
		}
		System.out.println("******CID's of all customers******");
		NodeList clist = doc.getElementsByTagName("customer");
		System.out.println(clist.getLength());
		for(int i=0;i<clist.getLength();i++){
			Element ele = (Element)clist.item(i);
			String cid=ele.getAttribute("cid"); /// atttribues
			System.out.println(cid);
			}
		System.out.println("******Email of all customers******");
		NodeList nlist=doc.getElementsByTagName("cname");
		System.out.println(nlist.getLength());
		for(int i=0;i<nlist.getLength();i++){
			Element ele = (Element)nlist.item(i);
			CharacterData cd=(CharacterData)ele.getFirstChild();
			String em = cd.getData();
			System.out.println(em);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
