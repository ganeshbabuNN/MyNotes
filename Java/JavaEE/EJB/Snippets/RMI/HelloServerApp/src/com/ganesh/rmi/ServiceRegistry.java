package com.ganesh.rmi;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class ServiceRegistry {

	public static void main(String[] args) {
		try{
		Registry reg= LocateRegistry.createRegistry(2222);
		HelloService hello = new HelloServiceImpl();
		reg.bind("Hello", hello);
		}
		catch(Exception e)  {
		e.printStackTrace();
	}	
	}

}
