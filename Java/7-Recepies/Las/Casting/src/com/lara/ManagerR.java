package com.lara;

class A17
{
	int i;
}
class B17 extends A17
{
	int j;
}
class C17 extends B17
{
	int k;
}
public class ManagerR {
	public static void main(String[] args) {
		A17 a1 = new A17();
		A17 a2 = a1;
		B17 b1 = (B17)a2;
		C17 c1 = (C17)a1;
		B17 b2 = (C17)a1;
		System.out.println(a1.i);
		System.out.println(c1.k);
		System.out.println(b2.j);
		System.out.println(a2.i);
		System.out.println(a2.i);
	}
}
