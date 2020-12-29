package com.lara;

static interface A1
{
	void test();
}
public class ManagerA {
	void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		ManagerA m1 = new ManagerA();
		m1.test();
	}
}
