package com.ganesh.struts2;


import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterSubmitAction extends ActionSupport{
	private List <String> requTechLeft = new ArrayList<String>();
	private List <String> reqTechsRight = new ArrayList<String>();
	private List <String> learningOrder = new ArrayList<String>();
	
	@Override
	public String execute() throws Exception {
		System.out.println(requTechLeft);
		System.out.println(reqTechsRight);
		System.out.println(learningOrder);
		return "success";
	}

	public List<String> getRequTechLeft() {
		return requTechLeft;
	}

	public void setRequTechLeft(List<String> requTechLeft) {
		this.requTechLeft = requTechLeft;
	}

	public List<String> getReqTechsRight() {
		return reqTechsRight;
	}

	public void setReqTechsRight(List<String> reqTechsRight) {
		this.reqTechsRight = reqTechsRight;
	}

	public List<String> getLearningOrder() {
		return learningOrder;
	}

	public void setLearningOrder(List<String> learningOrder) {
		this.learningOrder = learningOrder;
	}
}