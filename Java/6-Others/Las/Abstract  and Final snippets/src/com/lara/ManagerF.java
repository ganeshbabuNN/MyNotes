package com.lara;

abstract class A6
{
	abstract void test1();
}
class B4 extends A6
{
	void test1()
	{
		System.out.println("test() defined");
	}
}
public class ManagerF {
	public static void main(String[] args) {
		B4 b1 = new B4();
			b1.test1();
	}
}
