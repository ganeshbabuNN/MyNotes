/**
 * HelloServiceSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.5.3  Built on : Nov 12, 2010 (02:24:07 CET)
 */
package com.ganesh.axis2.hello;

/**
 * HelloServiceSkeleton java skeleton for the axisService
 */
public class HelloServiceSkeleton {
	public com.ganesh.axis2.hello.UserMessage getMessage(
			com.ganesh.axis2.hello.User user) {;
				String nm=user.getName();
				String em=user.getEmail();
				String msg="Hello"+nm+"Welcome to AXIS2 Contract-First Approach\n Your email"+ em;
				UserMessage um=new UserMessage();
				um.setMsg(msg);
				System.out.println("in getMessage\n" +msg);
				return um;
	}

}
