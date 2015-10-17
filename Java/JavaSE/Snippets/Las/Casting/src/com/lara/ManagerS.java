package com.lara;

class 9
{
	int i;
}
class B18 extends A18
{
	int j;
}
class C18 extends B18
{
	int k;
}
public class ManagerS {
	static void test(A18 a1)
	{
		System.out.println(a1.i);
	}
	static void test(B18 b1)
	{
		System.out.println(b1.i);
		System.out.println(b1.j);
	}
	public static void main(String[] args) {
		A18 a1 = new B18();
		test(a1);
		test((B18)a1);
	}
}
