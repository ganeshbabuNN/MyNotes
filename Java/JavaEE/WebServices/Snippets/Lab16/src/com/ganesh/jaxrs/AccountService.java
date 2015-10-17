package com.ganesh.jaxrs;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

@Path("/account")
public class AccountService {
	@GET
	@Path("/getbal/{accno}")
	public Account getB(@PathParam("accno")int ano){
		System.out.println("**** getBal() method ****");
		if(ano<101){
			return new Account(ano, 10000.0);
		}else{
			return new Account(ano, 250000.0);
		}
	}
	@GET
	@Path("/deposit/{accno}/{amount}")
	public String deposit(@PathParam("accno")int ano,@PathParam("amount")double amt){
		System.out.println("******deposit() method");
		System.out.println(ano+"\t"+amt);
		String msg="Your amount has been deposited successfully";
		return msg;
	}
	
	@GET
	@Path("/withdraw/{accno}/{amount}")
	public String withdraw(@PathParam("accno")int ano,@PathParam("amount")double amt){
		System.out.println("**** withdraw() method****");
		System.out.println(ano+"\t"+amt);
		String msg="Your amount has been withdrawan successfully";
		return msg;
	}
}
