package com.lara;
abstract class A2
{
	abstract void test1();
}
class B extends A2
{
	void test1()
	{
		System.out.println("test() defined");
	}
}
public class ManagerB {
	public static void main(String[] args) {
		B b1 = new B();
		b1.test1();
	}
}
