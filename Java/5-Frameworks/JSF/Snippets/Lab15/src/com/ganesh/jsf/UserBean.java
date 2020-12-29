package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.List;

import javax.faces.model.SelectItem;

public class UserBean {
	String name;
	String email;
	String batch1;
	String batch2;
	String batch3;
	List<String> topics1;
	List<String> topics2;
	List<String> topics3;
	List<SelectItem> batchList = null;
	List<SelectItem> topicsList = null;
	boolean pservice;
	String comments;
	public UserBean() {
		UserService us = new UserService();
		batchList = new ArrayList<SelectItem>();
		List<String> bats = us.getBatches();
		for(String bat:bats){
			SelectItem si = new SelectItem(bat,bat);
			batchList.add(si);
		}
		topicsList = new ArrayList<SelectItem>();
		List<String> tops = us.getTopics();
		for(String top:tops){
			SelectItem si = new SelectItem(top,top);
			topicsList.add(si);
		}
		
	}
	public String registerUser() {
		String str ="success";
		System.out.println(this.name);
		System.out.println(this.email);
		System.out.println(this.batch1);
		System.out.println(this.batch2);
		System.out.println(this.batch3);
		System.out.println(this.pservice);
		System.out.println(this.comments);		
		return str;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBatch1() {
		return batch1;
	}
	public void setBatch1(String batch1) {
		this.batch1 = batch1;
	}
	public String getBatch2() {
		return batch2;
	}
	public void setBatch2(String batch2) {
		this.batch2 = batch2;
	}
	public String getBatch3() {
		return batch3;
	}
	public void setBatch3(String batch3) {
		this.batch3 = batch3;
	}
	public List<String> getTopics1() {
		return topics1;
	}
	public void setTopics1(List<String> topics1) {
		this.topics1 = topics1;
	}
	public List<String> getTopics2() {
		return topics2;
	}
	public void setTopics2(List<String> topics2) {
		this.topics2 = topics2;
	}
	public List<String> getTopics3() {
		return topics3;
	}
	public void setTopics3(List<String> topics3) {
		this.topics3 = topics3;
	}
	public List<SelectItem> getBatchList() {
		return batchList;
	}
	public void setBatchList(List<SelectItem> batchList) {
		this.batchList = batchList;
	}
	public List<SelectItem> getTopicsList() {
		return topicsList;
	}
	public void setTopicsList(List<SelectItem> topicsList) {
		this.topicsList = topicsList;
	}
	public boolean isPservice() {
		return pservice;
	}
	public void setPservice(boolean pservice) {
		this.pservice = pservice;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
}
