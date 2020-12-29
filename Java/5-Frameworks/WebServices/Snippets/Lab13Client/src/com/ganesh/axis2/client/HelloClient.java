package com.ganesh.axis2.client;

import com.ganesh.axis2.hello.HelloServiceStub;
import com.ganesh.axis2.hello.HelloServiceStub.User;
import com.ganesh.axis2.hello.HelloServiceStub.UserMessage;

public class HelloClient {

	public static void main(String[] args) {
		try{
			HelloServiceStub hss = new HelloServiceStub();
			User user = new User();
			user.setName("Ganesh");
			user.setEmail("gan@jl.com");
			UserMessage um=hss.getMessage(user);
			System.out.println(um.getMsg());
		}catch(Exception e){
			e.printStackTrace();
		}

	}

}
