package com.lara;

class A11
{
	int i;
}
class B11 extends A11
{
	int j;
}
class C11 extends B11
{
	int k;
}
public class ManagerL 
{
	static void test1(A11 a1)
	{
		System.out.println("A");
	}
	static void test1(B11 b1)
	{
		System.out.println("B");
	}
	static void test1(C11 c1)
	{
		System.out.println("C");
	}
	public static void main(String[] args) {
		A11 a1 = new C11();
		test1(a1);
		test1((B11)a1);
		test1((C11)a1);
		test1((B11)(A11)(C11)(A11)(B11)a1);
	}
}
