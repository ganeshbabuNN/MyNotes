package com.ganesh.jaxrs;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class UserMessage {
	String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
