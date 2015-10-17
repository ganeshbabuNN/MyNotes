package com.lara;
class A1
{
	void test()
	{
		System.out.println("A");
	}
}
class B1 extends A1
{
	void test()
	{
		System.out.println("B");
	}
}
public class ManagerA {
	public static void main(String[] args) {
		A1 all[]= new A1[2];
		A1 a1 = new A1();
		A1 a2 = new B1();
		all[0] = a1;
		all[1] = a2;
		for(int i = 0; i<all.length;i++)
		{
			all[i].test();
		}
	}
}
