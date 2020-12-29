package com.ganesh.jpa;

public class Lab14 {
	
	public static void main(String[] args) {
		
	CustomerDAO cdao = DAOFactory.getCustomerDAO();
	
	CustomerTO cto = new CustomerTO("sd","sd@jlc.com",111,"Blore",18000.0);
	cdao.addCustomer(cto);
	
	cto = cdao.getCustomerByCid(13);
	System.out.println(cto.getCid()+"\t"+ cto.getCname()+"\t"+ cto.getEmail()+"\t"+cto.getPhone()+"\t"+cto.getCity()+"\t"+cto.getBal());
	
	cto.setCname("DS");
	cto.setEmail("ds@jlc.com");
	
	//cdao.updateCustomer(cto);
	//cdao.deleteCustomer(10);
	}
}
