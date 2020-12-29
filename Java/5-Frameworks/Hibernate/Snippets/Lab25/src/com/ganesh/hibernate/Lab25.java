package com.ganesh.hibernate;

public class Lab25 {
	public static void main(String[] args) {
		
			CustomerDAO cdao = DAOFactory.getCustomerDAO();			
			
			//1 add Customer
			CustomerTO cto= new CustomerTO("Ganesh", "Ganesh@j.com", 3234, "BB", "Enabled");
			cdao.addCustomer(cto); 
			
			//2 get Customer
			CustomerTO c1 = cdao.getCustomerByCid(1);
			System.out.println(c1.getCid()+ "\t"+c1.getCname()+ "\t"+c1.getEmail()+ "\t"+c1.getPhone()+ "\t"+c1.getCity()+ "\t"+c1.getStatus());
			
			//3 delete customer
			cdao.delteCustomer(4);
			
			//4.update customer
			 CustomerTO c2 = cdao.getCustomerByCid(2);
			c2.setCname("Banu");
			c2.setEmail("Banu@j.com");
			c2.setPhone(6565);
			cdao.updateCustomer(c2);
	}

}
