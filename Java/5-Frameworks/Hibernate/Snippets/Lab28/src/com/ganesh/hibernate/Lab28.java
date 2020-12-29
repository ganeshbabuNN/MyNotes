package com.ganesh.hibernate;

import java.util.List;

public class Lab28 {
	public static void main(String[] args) {
		
			CustomerDAO cdao = DAOFactory.getCustomerDAO();			
			
			System.out.println("All Customers");
			List<Customer> list =cdao.getAllCustomer();
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("All Customers");
			list=cdao.getAllCustomers(0, 4);
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by City");
			list=cdao.getCustomersByCity("Blore");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by City 0 3");
			list=cdao.getCustomersByCity("Blore",0,2);
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by CardType");
			list=cdao.getCustomersByCardType("MASTER");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by CardType 0 2");
			list=cdao.getCustomersByCardType("MASTER",0,2);
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by Bal");
			list=cdao.getCustomersByBal(1300.0);
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by Bal 0 1");
			list=cdao.getCustomersByBal(1300.0,0,1);
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by status");
			list=cdao.getCustomersByStatus("Active");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by status 0 3");
			list=cdao.getCustomersByStatus("Active",0,3);
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by Name");
			list=cdao.getCustomersByStatus("Ganesh");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by City, CardType");
			list=cdao.getCustomers("Blore", "MASTER");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by City, CardType,status");
			list=cdao.getCustomers("Blore", "MASTER", "Active");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by email");
			Customer c=(Customer)cdao.getCustomerByEmail("ganesh@gmail.com");
			System.out.println(c);
			System.out.println("customers by ccno");
			c=(Customer)cdao.getCustomerByCardNo(123456);
			System.out.println(c);		
	}

}
