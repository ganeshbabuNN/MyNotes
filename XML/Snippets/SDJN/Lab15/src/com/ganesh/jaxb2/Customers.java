package com.ganesh.jaxb2;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Customers {
	private List<Customer> customers;
	public Customers() {
		customers= new ArrayList<Customer>();
	}
	public List<Customer> getCustomers() {
		return customers;
	}
	@XmlElement(name="customer")
	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}
	public void addCustomer(Customer cust){
		customers.add(cust);
	}
}
