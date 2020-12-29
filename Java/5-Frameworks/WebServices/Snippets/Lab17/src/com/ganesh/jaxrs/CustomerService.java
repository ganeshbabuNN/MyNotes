package com.ganesh.jaxrs;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

@Path("/customer/")
public class CustomerService {
	@GET
	@Path("/getbyid/{id}/")
	public Customer getCustomerByCid(@PathParam("id") int id){
		System.out.println("-----invoking getCustomerByCid, Customer id is:"+id);
		Customer cust= new Customer();
		cust.setCid(102);
		cust.setCname("vas");
		cust.setEmail("ganesh@j.com");
		cust.setPhone(2222);
		cust.setCity("Blore");
		return cust;		
	}
	
	@GET
	@Path("/getbycity/{city}/")
	public Customers getCustomersByCity(@PathParam("city") String city){
		System.out.println("------- invoking getCustomerByCity, Customer city is:"+city);
		Customer cust = new Customer();
		cust.setCid(101);
		cust.setCname("ganesh");
		cust.setEmail("ganesh@g.com");
		cust.setCity("Blore");
		Customers cs=new Customers();
		cs.getCustomer().add(cust);
		cs.getCustomer().add(cust);
		cs.getCustomer().add(cust);
		cs.getCustomer().add(cust);
		cs.getCustomer().add(cust);
		for(Customer c1:cs.getCustomer()){
			System.out.println(c1);			
		}
		return cs;
	}
	
	@PUT
	@Path("/update/")
	public String updateCustomer(Customer customer){
		System.out.println("---invoking addCustomer");
		System.out.println(customer);
		return "GANESH-99";
	}
	
	@POST
	@Path("/add/")
	public String addCustomer(Customer customer){
		System.out.println("---invoking addCustomer");
		System.out.println(customer);
		return "GANESH-22";
	}

}
