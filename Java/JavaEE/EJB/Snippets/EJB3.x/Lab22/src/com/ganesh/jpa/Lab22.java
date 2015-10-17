package com.ganesh.jpa;

import java.util.List;

public class Lab22 {
	public static void main(String[] args) {
		CustomerDAO cdao = DAOFactory.getCustomerDAO();
		//Customer c1 = new Customer("bb", "bb@l.com", "1221", "Blore");
		//Customer c2 = new Customer("cc", "cc@l.com", "1221", "Blore");
		//Customer c3= new Customer("ee", "ee@l.com", "1221", "Blore");
		//Customer c4= new Customer("dd", "dd@l.com", "1221", "Clore");
		//cdao.addCustomers(c1);
		//cdao.addCustomers(c2);
		//cdao.addCustomers(c3);
		//cdao.addCustomers(c4);
		
		Customer ci = cdao.getCustomersByCid(3);
		ci.setCname("xyz");
		ci.setEmail("yz@j");
		cdao.updateCustomers(ci);
		//cdao.deleteCustomers(1);
		
		System.out.println("getAllCustomers");
		List<Object> list=cdao.getAllCustomesr();
		for(Object o: list){
			System.out.println(o);
		}
		System.out.println("getAllCustomers(0,3)");
		list =cdao.getAllCustomers(0, 3);
		for(Object o: list){
			System.out.println(o);
		}
		System.out.println(" getCustomerByCity(Blore)");
		list=cdao.getCustomersByCity("Blore");
		for(Object o: list){
			System.out.println(o);
		}
		System.out.println("getCustomerByCity(Blore,0,2)");
		list=cdao.getCustomersByCity("Blore", 0, 2);
	}
}
