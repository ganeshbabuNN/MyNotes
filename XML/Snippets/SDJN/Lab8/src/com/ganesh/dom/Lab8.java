/// displaying complete data of all customer
package com.ganesh.dom;

import java.util.ArrayList;
import java.util.List;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class Lab8 {
	public static void main(String[] args) {
		try{
		List<CustomerTO> custlist=new ArrayList<CustomerTO>();
		Document doc=DOMUtil.readXML("src/customers.xml");
		NodeList clist =doc.getElementsByTagName("customer");
		for(int i=0;i<clist.getLength();i++){
			Element cele=(Element)clist.item(i);
			CustomerTO cto= new CustomerTO();
			//1.get cid attribute value
			String cid=cele.getAttribute("cid");
			cto.setCid(cid);
			//2.get status attribute value
			String status = cele.getAttribute("status");
			cto.setStatus(status);;
			//3.get cname element value
			String cname= DOMUtil.getTagData(cele, "cname");
			cto.setCname(cname);
			//4.get email element value
			String email=DOMUtil.getTagData(cele, "email");
			cto.setEmail(email);
			//5.get phone element value
			String phone=DOMUtil.getTagData(cele, "phone");
			cto.setPhone(phone);
			//6.get city element value
			String city=DOMUtil.getTagData(cele, "city");
			cto.setCity(city);
			custlist.add(cto);
		}
		System.out.println("customer Found:"+ custlist.size());
		for(CustomerTO cto: custlist){
			System.out.println(cto);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}	

}
