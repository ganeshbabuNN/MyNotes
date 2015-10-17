package com.lara;

class A12
{
	int i;
}
class B12 extends A12
{
	int j;
}
class C12 extends B12
{
	int k;
}
public class ManagerM {
	static void test1(B12 b1)
	{
		System.out.println("B");
	}
	public static void main(String[] args) {
		A12 a1 = new C12();
		test1((B12)a1);
		test1((C12)a1);
		test1((B12)(A12)(C12)(A12)(B12)a1);
		
	}
}
