package com.lara;

interface A3
{
	void test();
}
interface B1
{
	void test();
}
abstract class C1
{
	abstract void test();
}
public class D extends C1 implements A3,B1
{	
	public void test()
	{
		System.out.println("test");
	}
}
