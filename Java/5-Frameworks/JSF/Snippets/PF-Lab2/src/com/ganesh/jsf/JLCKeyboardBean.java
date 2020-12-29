package com.ganesh.jsf;

import javax.faces.bean.ManagedBean;

@ManagedBean(name="keyboardBean")
public class JLCKeyboardBean {
	private String value1;
	private String value2;
	private String value3;
	private String value4;
	private String value5;
	private String value6;
	private String value7;
	
	public void showData(){
		System.out.println("Displaying Submitted Data");
		System.out.println("Val 1 :" + value1);
		System.out.println("Val 2 :" + value2);
		System.out.println("Val 3 :" + value3);
		System.out.println("Val 4 :" + value4);
		System.out.println("Val 5 :" + value5);
		System.out.println("Val 6 :" + value6);
		System.out.println("Val 7 :" + value7);
	}
	
	public String getValue1() {
		return value1;
	}
	public void setValue1(String value1) {
		this.value1 = value1;
	}
	public String getValue2() {
		return value2;
	}
	public void setValue2(String value2) {
		this.value2 = value2;
	}
	public String getValue3() {
		return value3;
	}
	public void setValue3(String value3) {
		this.value3 = value3;
	}
	public String getValue4() {
		return value4;
	}
	public void setValue4(String value4) {
		this.value4 = value4;
	}
	public String getValue5() {
		return value5;
	}
	public void setValue5(String value5) {
		this.value5 = value5;
	}
	public String getValue6() {
		return value6;
	}
	public void setValue6(String value6) {
		this.value6 = value6;
	}
	public String getValue7() {
		return value7;
	}
	public void setValue7(String value7) {
		this.value7 = value7;
	}
	
}
