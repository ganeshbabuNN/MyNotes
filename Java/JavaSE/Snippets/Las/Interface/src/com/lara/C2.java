package com.lara;
interface A6
{
	void test();
}
class B4
{
	public void test()
	{
		System.out.println("test method");
	}	
}
public class C2 extends B4 implements A6
{
	public static void main(String[] args) {
		C2 c1 = new C2();
		c1.test();
	}	
}
