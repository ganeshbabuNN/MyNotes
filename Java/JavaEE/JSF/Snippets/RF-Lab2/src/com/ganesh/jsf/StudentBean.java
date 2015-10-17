package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;

public class StudentBean {
	private String name;
	private String email;
	private String gender;
	private String batchId;
	private String faculty;
	private String reference;
	private Date dob;
	private String qualification;
	private List<String> course;
	private String timinings;
	private String remarks;
	private int knowledgeLevel;
	private int fees=8000;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	public String getFaculty() {
		return faculty;
	}
	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public List<String> getCourse() {
		return course;
	}
	public void setCourse(List<String> course) {
		this.course = course;
	}
	public String getTiminings() {
		return timinings;
	}
	public void setTiminings(String timinings) {
		this.timinings = timinings;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getKnowledgeLevel() {
		return knowledgeLevel;
	}
	public void setKnowledgeLevel(int knowledgeLevel) {
		this.knowledgeLevel = knowledgeLevel;
	}
	public int getFees() {
		return fees;
	}
	public void setFees(int fees) {
		this.fees = fees;
	}
	
	public String registerStudent(){
		System.out.println(name);
		System.out.println(email);
		System.out.println(dob);
		System.out.println(gender);
		System.out.println(batchId);
		System.out.println(course);
		System.out.println(fees);
		System.out.println(reference);
		System.out.println(remarks);
		System.out.println(knowledgeLevel);
		return "success";
	}
	
	public List<BatchBean> suggestBatch(Object obj){
		String preferredBatch =obj.toString();
		ArrayList<BatchBean> suggestedBatches = new ArrayList<BatchBean>();
		ArrayList<BatchBean> currentBatches = new ArrayList<BatchBean>();
		BatchBean batch1= new BatchBean("B17", "Mathikere", "Srinivas", "7AM to 2PM");
		BatchBean batch2= new BatchBean("B18", "Madiwala", "ABC", "10AM to 12:30PM");
		BatchBean batch3= new BatchBean("B19", "HSR Layout", "Srinivas", "8AM to 2PM");
		BatchBean batch4= new BatchBean("B20", "Marathahalli", "Sri", "6.30AM to 8:30PM");
		BatchBean batch5= new BatchBean("B21", "Mathikere", "Vas", "4AM to 6PM");
		BatchBean batch6= new BatchBean("B22", "HSR Layout", "XYZ", "4AM to 6PM");
		currentBatches.add(batch1);
		currentBatches.add(batch2);
		currentBatches.add(batch3);
		currentBatches.add(batch4);
		currentBatches.add(batch5);
		currentBatches.add(batch6);
		Iterator<BatchBean> itr = currentBatches.iterator();
		while(itr.hasNext()){
			BatchBean batch= itr.next();
			if((batch.getBatchId()!=null && batch.getBatchId().toLowerCase().indexOf(preferredBatch.toLowerCase()) == 0)
				|| batch.getBatchId().equals(preferredBatch)){
				suggestedBatches.add(batch);
			}
		}
		return suggestedBatches;
	}
	
	public List<String> autocomplete(Object obj){
		String preferred = obj.toString();
		ArrayList<String> result = new ArrayList<String>();
		ArrayList<String> qList = new ArrayList<String>();
		qList.add("BSc");
		qList.add("BE");
		qList.add("BE");
		qList.add("MSc");
		qList.add("MCS");
		qList.add("MBA");
		Iterator<String> itr = qList.iterator();
		while(itr.hasNext()){
			String element = itr.next().toString();
			if((element.toLowerCase().indexOf(preferred.toLowerCase()) == 0) ||
					element.equals(preferred)){
				result.add(element);
			}
		}		
		return result;
	}
}
