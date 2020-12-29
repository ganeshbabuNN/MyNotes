package com.ganesh.accounts;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class RegistryServices {
	public static void main(String[] args) {
		try {
			Registry reg = LocateRegistry.createRegistry(1234);
			AccountService as = new AccountServiceImpl();
			reg.bind("AccService", as);
			System.out.println("Ready now..");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
