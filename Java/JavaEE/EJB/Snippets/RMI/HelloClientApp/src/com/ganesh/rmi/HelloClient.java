package com.ganesh.rmi;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class HelloClient {

	public static void main(String[] args) {
		try {
		Registry reg = LocateRegistry.getRegistry("LocalHost", 2222);
		Object obj =reg.lookup("Hello");
		HelloService hs =(HelloService)obj;
		String msg  = hs.getMessage("\t Ganesh\t");
		msg  = hs.getMessage("\t Banu \t");
		msg  = hs.getMessage("\t Kalyani \t");
		System.out.println(msg);
	}catch (Exception e) {
		e.printStackTrace();
	}
  }
}

