package com.lara;

public abstract class ManagerD {
	int i;
	abstract void test2();
	static void disp()
	{
		System.out.println("Inside the static method of abstract class");
	}
	public static void main(String[] args) {
		ManagerD.disp();
	}
}
