package com.lara1;

abstract class X
{
	abstract void test();
}
class Y extends X
{
	void test()
	{
		System.out.println("test");
	}
}
public class Manager {
	public static void main(String[] args) {
		Y y1 = new Y();
		y1.test();
	}
}
