package com.ganesh.hibernate;

import java.util.List;

public class Lab29A {
	public static void main(String[] args) {
		
			CustomerDAO cdao = DAOFactory.getCustomerDAO();			
			
			System.out.println("All Customers");
			List<Customer> list =cdao.getAllCustomer();
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("\nCustomers by Status");
			list=cdao.getCustomersByStatus("Active");
			for(Customer c: list){
				System.out.println(c);
			}
			
			System.out.println("Customer by Email");
			Customer c=(Customer)cdao.getCustomerByEmail("ganesh@gmail.com");
			System.out.println(c);				
	}

}
