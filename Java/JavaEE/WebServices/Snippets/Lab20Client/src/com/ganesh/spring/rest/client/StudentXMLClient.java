package com.ganesh.spring.rest.client;

import java.util.List;

import com.ganesh.spring.rest.to.StudentTO;
import com.ganesh.spring.rest.to.Students;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class StudentXMLClient {
	public static void main(String[] args) {
		ClientConfig config= new DefaultClientConfig();
		Client client=Client.create(config);
		//1.Add the Student
		String URL1="http://localhost:5555/Lab20/services/student/add/";
		URL1=URL1+"Vedha"+"/"+"ved@d.com"+"/"+2222;
		WebResource webres1= client.resource(URL1);
		webres1.post();
		//2. GET all the students
		System.out.println("**********GET all the students**********");
		String URL2="http://localhost:5555/Lab20/services/student/getall.xml";
		WebResource webres2= client.resource(URL2);
		ClientResponse cresp1=webres2.accept("text/xml").get(ClientResponse.class);
		Students sts=cresp1.getEntity(Students.class);
		List<StudentTO> list=sts.getStudList();
		System.out.println("No of Records" + list.size());
		for(StudentTO sto:list){
			System.out.println(sto);
		}
		//3 Get Student By SID
		System.out.println("**********get student By sid**********");
		String URL3="http://localhost:5555/Lab20/services/student/getbyid/";
		URL3=URL3+"1.xml";
		WebResource webres3= client.resource(URL3);
		ClientResponse cresp2 = webres3.accept("text/xml").get(ClientResponse.class);
		StudentTO sto = cresp2.getEntity(StudentTO.class);
		System.out.println(sto);
	}

}
