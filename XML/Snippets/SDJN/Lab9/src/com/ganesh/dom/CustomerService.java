package com.ganesh.dom;

import java.util.ArrayList;
import java.util.List;

public class CustomerService {
	public List<CustomerTO> getCustomers(){
		List<CustomerTO> custlist= new ArrayList<CustomerTO>();
		CustomerTO cto = new CustomerTO();
		cto.setCid("C-101");
		cto.setCname("ganesh");
		cto.setEmail("ga@jl.com");
		cto.setPhone("1111");
		cto.setCity("Blore");
		cto.setStatus("Active");
		custlist.add(cto);
		custlist.add(cto);
		custlist.add(cto);
		custlist.add(cto);
		custlist.add(cto);
		custlist.add(cto);
		custlist.add(cto);
		return custlist;
	}
}
