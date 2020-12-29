package com.jlc;

class Customer
{
	int cid;
	String cName;
	String email;
	long phone;
	Customer()
	{
		
	}
	public Customer(int cid, String cName, String email, long phone) {
		this.cid = cid;
		this.cName = cName;
		this.email = email;
		this.phone = phone;
	}
	void show()
	{
		System.out.println(cid + "\t" + cName + "\t" + email + "\t" + phone);
	}
	public int hasCode()
	{
		// write your algorithmn
		System.out.println("inside has code()...");
		int x = 20;
		return x;
	}
	public boolean equals(Object o)
	{
		Customer c = (Customer)o;
		if(this.cid == c.cid && this.cName.equals(c.cName)){
			return true;
		}
		return false;
	}
	public String toString()
	{
		return ""+ cid + "\t" + cName + "\t" +email + "\t" + phone;
	}	
}
public class Lab2 
{
	public static void main(String[] args) {
		Customer c1 = new Customer(101,"Sri","sir@jlc" ,9999);
		Customer c2 = new Customer(101,"Sri","sir@jlc" ,9999);
		Customer c3 = new Customer(103,"Sri","sir@jlc" ,9999);
		c1.show();
		System.out.println(c1.getClass());
		System.out.println(c1.hasCode());
		System.out.println(c1.toString());
		System.out.println(c2);  // calling tostring() of customer class
		System.out.println(c1);	// calling tostring() of customer class
		System.out.println(c1 == c2);
		System.out.println(c1.equals(c2));
		System.out.println(c1 == c3);
		System.out.println(c1.equals(c3));	
	}
}
