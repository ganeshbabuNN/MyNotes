package com.ganesh.axis2.client;

import com.ganesh.axis2.HelloServiceStub;
import com.ganesh.axis2.HelloServiceStub.GetMessage;
import com.ganesh.axis2.HelloServiceStub.GetMessageResponse;

public class HelloClient {

	public static void main(String[] args) throws Exception {
		HelloServiceStub hss = new HelloServiceStub();
		GetMessage gm = new GetMessage();
		gm.setName("Ganesh");
		GetMessageResponse gmr = hss.getMessage(gm);
		String msg = gmr.get_return();
		System.out.println(msg);
	}
}
