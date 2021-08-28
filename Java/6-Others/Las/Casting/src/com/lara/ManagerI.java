package com.lara;
class A8
{
	int i;
}
class B8 extends A8
{
	int j;
}
class C8 extends B8
{
	int k;
}
public class ManagerI {
	static void test(A8 a1)
	{
		System.out.println(a1.i);
		System.out.println(a1.j);
		System.out.println(a1.k);
	}
	static void test(B8 b1)
	{
		System.out.println(b1.i);
		System.out.println(b1.j);
		System.out.println(b1.k);
	}
	public static void main(String[] args) {
		A8 a1 = new B8();
		test(a1);
		test((B8)a1);
	}
	
}
