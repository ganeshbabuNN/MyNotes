package com.lara;

class 10
{
	int i;
}
class B9 extends A9
{
	int j;
}
class C9 extends B9
{
	int k;
}
public class ManagerJ 
{
	public static void main(String[] args) 
	{
		A9 a1 = new C9();
		test1(a1);
		test2((B9)a1);
		test3((C9)a1);
		test1((B9)a1);
		test2((C9)a1);
		test3((C9)a1);
		test1((B9)(A9)(C9)a1);
		test2((B9)(C9)a1);
	}
	static void test1(A9 a1)
	{
		System.out.println(a1.i);
	}
	static void test2(B9 b1)
	{
		System.out.println(b1.i);
		System.out.println(b1.j);
	}
	static void test3(C9 c1)
	{
		System.out.println(c1.i);
		System.out.println(c1.j);
		System.out.println(c1.k);
	}
	
}
