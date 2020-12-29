package com.lara;

class A22
{
	int i = 10;
}
class B22 extends A22
{
	int j = 20;
}
class C22 extends B22
{
	int k = 30;
}
public class ManagerX {
	public static void main(String[] args) {
		A22 a1 = new A22();
		A22 a2 = new B22();
		C22 c1 = new C22();
		A22 a3 = new B22();
		B22 b1 = (B22)a3;
		System.out.println(a1.i);
		System.out.println(c1.k);
		System.out.println(a2.i);
		System.out.println(a3.i);
	}
}
