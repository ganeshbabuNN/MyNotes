package com.lara;

class A14
{
	int i;
}
class B14 extends A14
{
	int j;
}
class C14 extends B14
{
	int k;
}
public class ManagerO {
	public static void main(String[] args) {
		A14 a1 = new C14();
		B14 b1 = (B14)a1;
		C14 c1 = (C14)b1;
		C14 c2 = (C14)a1;
		C14 c3 = (C14)(B14)a1;
		C14 c4 = (C14)(B14)(A14)(B14)(C14)b1;
		System.out.println(b1.j);
	}

}
