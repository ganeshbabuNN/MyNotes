package com.ganesh.online.ws;

import java.util.List;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class StudentClient {
    public static void main(String[] args) {
    	ClientConfig config = new DefaultClientConfig();
		Client client = Client.create(config);
		
		//1.add student
		String url1="http://localhost:5555/Lab18/services/student/add/";
		url1=url1+"vass"+"/"+"ga@l.com"+"/"+211;
		WebResource webres1 = client.resource(url1);
		webres1.post();
		
		System.out.println("*** ALL STUDENTS***");
		//2get all the students
		String URL2="http://localhost:5555/Lab18/services/student/getall";
		WebResource webres2=client.resource(URL2);
		Students sts=webres2.get(Students.class);
		List<StudentTO> list=sts.getStudent();
		System.out.println("No of Records"+list.size());
		for(StudentTO sto: list){
			System.out.println(sto);
		}
		
		System.out.println("*** Student BY ld***");
		//2get all the students
		String URL3="http://localhost:5555/Lab18/services/student/getbyid/";
		URL3=URL3+1;
		WebResource webres3 = client.resource(URL3);
		StudentTO sto =webres3.get(StudentTO.class);
		System.out.println(sto);    	
	}
}
