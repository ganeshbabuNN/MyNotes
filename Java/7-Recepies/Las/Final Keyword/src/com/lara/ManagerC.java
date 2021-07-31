package com.lara;

abstract class A3
{
	abstract void test2();
}
class B1 extends A3
{
	void test1()
	{
		System.out.println("test() defined");
	}
}
public class ManagerC {
	public static void main(String[] args) {
		B b1 = new B();
		b1.test1();
	}
}
