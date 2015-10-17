package com.lara;

class A6
{
	int i;
}
class B6 extends A6
{
	int j;
}
class C6 extends B6
{
	int k;
}
public class ManagerG {
	public static void main(String[] args) {
		A6 a1 = new B6();
		A6 a2 = (A)(B)a1;
		B6 b1 = (B6)a2;
		C6 c1 = (C6)b1;
		B6 b2 = (C6)a1;
		System.out.println(a1.i);
		System.out.println(c1.i);
		System.out.println(b2.i);
		System.out.println(a2.i);		
	}
}
