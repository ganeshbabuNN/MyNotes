package com.lara;
class A3
{
	int i;
}
class B3 extends A3
{
	int j;
}
class C3 extends B3
{
	int k;
}
public class ManagerD {
	public static void main(String[] args) {
		B3 b1 = new C3();
		A3 a1 = b1;
		B3 b2 =(B3)a1;
		System.out.println(b2.k);
	}
}
