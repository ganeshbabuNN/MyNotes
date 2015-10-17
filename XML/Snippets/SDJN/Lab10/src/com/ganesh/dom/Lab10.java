//adding data to existing XML
package com.ganesh.dom;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class Lab10 {
	public static void main(String[] args) {
		try{
			CustomerTO cto= new CustomerTO();
			cto.setCid("C-104");
			cto.setCname("Gaja");
			cto.setEmail("Gaja@j.com");
			cto.setPhone("645645");
			cto.setCity("Blore");
			cto.setStatus("Active");
			
			Document doc = DOMUtil.readXML("src/customers.xml");
			Element cust=doc.createElement("customer");
			cust.setAttribute("cid", cto.getCid());
			cust.setAttribute("status", cto.getStatus());
			
			Element cnele= DOMUtil.createMyElement(doc, "cname", cto.getCname());
			cust.appendChild(cnele);
			
			Element emele =DOMUtil.createMyElement(doc, "email", cto.getEmail());
			cust.appendChild(emele);
			
			Element phele=DOMUtil.createMyElement(doc, "phone", cto.getPhone());
			cust.appendChild(phele);
			
			Element ciele =DOMUtil.createMyElement(doc, "city", cto.getCity());
			cust.appendChild(ciele);
			
			NodeList nlist=doc.getElementsByTagName("customers");
			Element root=(Element)nlist.item(0);
			root.appendChild(cust);
			DOMUtil.printTOFile(doc, "src/customers.xml");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
