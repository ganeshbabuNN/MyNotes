//delete data from existing XML
package com.ganesh.dom;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class Lab11 {
	public static void main(String[] args) {
		try{
			Document doc = DOMUtil.readXML("src/customers.xml");
			NodeList nlist=doc.getElementsByTagName("customers");
			Element root=(Element)nlist.item(0);
			NodeList clist=doc.getElementsByTagName("customer");
			for(int i=0;i<clist.getLength();i++){
				Element cust =(Element)clist.item(i);
				String cid=cust.getAttribute("cid");
				if(cid.equals("C-101")){
					root.removeChild(cust);
				}
			}
			DOMUtil.printTOFile(doc, "src/customers.xml");
			}catch(Exception e){
			e.printStackTrace();
		}
	}
}
