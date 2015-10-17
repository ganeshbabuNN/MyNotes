package com.ganesh.spring.rest.client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONTokener;

import com.ganesh.spring.rest.to.StudentTO;
import com.ganesh.spring.rest.to.Students;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class StudentJSONClient {
	public static void main(String[] args) {
		ClientConfig config= new DefaultClientConfig();
		Client client=Client.create(config);
		//1.Add the Student
		String URL1="http://localhost:5555/Lab20/services/student/add/";
		URL1=URL1+"Vedha"+"/"+"ved@d.com"+"/"+2222+".json";
		WebResource webres1= client.resource(URL1);
		webres1.post();
		//2. GET all the students
		System.out.println("**********GET all the students**********");
		String URL2="http://localhost:5555/Lab20/services/student/getall.json";
		WebResource webres2= client.resource(URL2);
		ClientResponse cresp1=webres2.accept("text/json").get(ClientResponse.class);
		String res=cresp1.getEntity(String.class);
		JSONTokener tok = new JSONTokener(res);
		Object obj = tok.nextValue();
		JSONObject jObj=(JSONObject)obj;
		JSONObject list =jObj.getJSONObject("LIST");
		JSONArray studList=list.getJSONArray("studList");
		Students studs= new Students();
		List<StudentTO> studtoList= new ArrayList<StudentTO>();
		Iterator<JSONObject> it=studList.iterator();
		while(it.hasNext()){
			JSONObject stObj=(JSONObject)it.next();
			int id = stObj.getInt("sid");
			String nm=stObj.getString("name");
			String eml =stObj.getString("phone");
			long phn=stObj.getLong("phone");
			StudentTO st = new StudentTO(id,nm,eml,phn);
			System.out.println(st);
			studtoList.add(st);
		}
		studs.setStudList(studtoList);
		System.out.println("No Of Stu:"+studtoList.size());
		
		//3 Get Student By SID
		System.out.println("**********get student By sid**********");
		String URL3="http://localhost:5555/Lab20/services/student/getbyid/";
		URL3=URL3+"1.json";
		WebResource webres3= client.resource(URL3);
		ClientResponse cresp2 = webres3.accept("text/json").get(ClientResponse.class);
		String res1=cresp2.getEntity(String.class);
		JSONTokener tok1 = new JSONTokener(res1);
		JSONObject jObj1=(JSONObject)tok1.nextValue();
		JSONObject studObj=jObj1.getJSONObject("STUD");
		int id = studObj.getInt("sid");
		String nm=studObj.getString("name");
		String eml=studObj.getString("email");
		Long phn=studObj.getLong("phone");
		StudentTO stud= new StudentTO(id, nm, eml, phn);
		System.out.println(stud);
	}
}
