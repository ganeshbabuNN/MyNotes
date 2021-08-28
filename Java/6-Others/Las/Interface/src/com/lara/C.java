package com.lara;
interface A2
{
	
}
class B
{
	public final static void test()
	{
		System.out.println("test");
	}
}
public class C extends B implements A2
{
	public static void main(String[] args) {
		new C().test();
		C.test();
	}
}
