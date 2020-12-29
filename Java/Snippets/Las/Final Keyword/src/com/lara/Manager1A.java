package com.lara;

abstract class G1
{
	void test()
	{
		
	}
}
public final class Manager1A  extends G1{
	void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		Manager1A a1 = new Manager1A();
		a1.test();
	}
}
