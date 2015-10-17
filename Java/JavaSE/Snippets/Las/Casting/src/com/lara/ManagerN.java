package com.lara;
class A13
{
	int i;
}
class B13 extends A13
{
	int j;
}
class C13 extends B13
{
	int k;
}
class Test
{
	void test(double d)
	 {
		 System.out.println("double");
	 }
	 void test(Object obj)
	 {
		 System.out.println("object");
	 }
}
public class ManagerN {
	
	 public static void main(String[] args) {
		 Test t = new Test();
		 t.test(10);
		 t.test(10.0);
		 t.test(new A13());
		 t.test(new B13());
		 t.test(new C13());
		 t.test(new Object());
		 t.test((B13)new C13());	 
	 }
}
