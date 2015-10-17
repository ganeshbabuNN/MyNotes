//updating data of existing XML
package com.ganesh.dom;

import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Lab12 {
	public static void main(String[] args) {
		try{
			boolean flag=false;
			Document doc = DOMUtil.readXML("src/customers.xml");
			NodeList clist=doc.getElementsByTagName("customer");
			for(int i=0;i<clist.getLength();i++){
				Element cust =(Element)clist.item(i);
				String cid=cust.getAttribute("cid");
				if(cid.equals("C-101")){
					flag=true;
					NodeList nl=cust.getChildNodes();
					for(int j=0;j<nl.getLength();j++){
						Node node=nl.item(j);
						String nm=node.getNodeName();
						if(nm.equals("email")){
							Element emele=(Element)node;
							CharacterData cd=(CharacterData)emele.getFirstChild();
							cd.setData("ganesh.baba@gmail.com");
						}
					}
					break;
				}
			}
			if(flag)
				DOMUtil.printTOFile(doc,"src/customers.xml");
			}catch(Exception e){
			e.printStackTrace();
		}
	}
}
