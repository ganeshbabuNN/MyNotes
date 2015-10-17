package com.lara;

abstract interface G
{
	void test();
}
public class Manager1 extends G{
	void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		Manager1 a1 = new Manager1();
		a1.test();
	}
	
}
