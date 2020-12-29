package com.ganesh.struts2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class HaiAction extends ActionSupport{
	String haimsg;
	public HaiAction() {
		haimsg ="Hai Guys, I am hai.jsp";
		System.out.println(haimsg);
	}
	@Override
	public String execute() throws Exception {
		return "success";
	}
	public String getHaimsg() {
		return haimsg;
	}
	public void setHaimsg(String haimsg) {
		this.haimsg = haimsg;
	}
}
