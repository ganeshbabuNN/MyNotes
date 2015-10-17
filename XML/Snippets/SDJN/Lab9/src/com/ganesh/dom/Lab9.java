// Generating new XML doc from existing data
package com.ganesh.dom;

import java.util.List;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class Lab9 {
	public static void main(String[] args) {
		try{
			CustomerService cs = new CustomerService();
			List<CustomerTO> custlist= cs.getCustomers();
			
			Document doc = DOMUtil.createDocument();
			Element root= doc.createElement("customers");
			doc.appendChild(root);
			
			for(CustomerTO cto:custlist){
				Element cust = doc.createElement("customer");
				cust.setAttribute("cid", cto.getCid());
				cust.setAttribute("status",cto.getStatus());
				
				Element cnele=DOMUtil.createMyElement(doc, "cname", cto.getCname());
				cust.appendChild(cnele);
				Element emele=DOMUtil.createMyElement(doc, "email", cto.getEmail());
				cust.appendChild(emele);
				
				Element phele=DOMUtil.createMyElement(doc, "phone", cto.getPhone());
				cust.appendChild(phele);
				
				Element ciele=DOMUtil.createMyElement(doc, "city", cto.getCity());
				cust.appendChild(ciele);
				root.appendChild(cust);
			}
			DOMUtil.printTOFile(doc, "mycust.xml");
			System.out.println("done");
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
