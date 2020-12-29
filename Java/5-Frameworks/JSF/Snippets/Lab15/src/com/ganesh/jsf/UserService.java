package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.List;

public class UserService {
	public List<String> getBatches(){
		List<String> batches = new ArrayList<String>();
		batches.add("Batch-23");
		batches.add("Batch-24");
		batches.add("Batch-25");
		batches.add("Batch-26");
		batches.add("Batch-27");
		batches.add("Batch-28");
		return batches;
	}
	public List<String> getTopics(){
		List<String> topics= new ArrayList<String>();
		topics.add("Struts2.0");
		topics.add("JSF2.0");
		topics.add("Hibernate3.0");
		topics.add("Spring 3.0");
		topics.add("EJB3.0");
		return topics;
	}
	
}
