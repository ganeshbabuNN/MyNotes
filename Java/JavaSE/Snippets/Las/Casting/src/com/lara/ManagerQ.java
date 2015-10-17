package com.lara;

class A16
{
	int i;
}
class B16 extends A16
{
	int j;
}
class C16 extends B16
{
	int k;
}
public class ManagerQ {
	public static void main(String[] args) {
		A16 a1 = new A16();
		B16 b1 = (B16)a1;
		C16 c1 = (C16)a1;
		System.out.println(b1.i);
		System.out.println(b1.j);
	}
}
