package com.jlc;
class A
{
	int x;
	public A(int x) {
		this.x = x;
	}
	
}
class B
{
	int p;
	A aobj;
	public B(int p, A aobj) {
		this.p = p;
		this.aobj = aobj;
	}
}
class C
{
	int q;
	B bobj;
	public C(int q, B bobj) {
		this.q = q;
		this.bobj = bobj;
	}
}
class Hello2 implements Cloneable
{
	int a;
	C cobj;
	public Hello2(int a, C cobj) {
		this.a = a;
		this.cobj = cobj;
	}
	
	void show()
	{
		System.out.println(a);
		System.out.println(cobj.q);
		System.out.println(cobj.bobj.p);
		System.out.println(cobj.bobj.aobj.x);
	}
	
	public Hello2 myClone()
	{
		Hello2 h = null;
		Object o = null;
		try {
			o = this.clone();
		} catch (CloneNotSupportedException e) {
				e.printStackTrace();
		}
		h = (Hello2)o;
		return h;
	}
	
	
}
public class Lab4 {
		public static void main(String[] args) {
			A aobj = new A(10);
			B bobj = new B(20,aobj);
			C cobj = new C(30,bobj);
			Hello2 h = new Hello2(40, cobj);
			h.show();
			Hello2 h1 = h.myClone();
			h1.show();
			System.out.println(h == h1);
			System.out.println(h.cobj == h1.cobj);
			System.out.println(h.cobj.bobj == h1.cobj.bobj);
			System.out.println(h.cobj.bobj.aobj == h1.cobj.bobj.aobj);
		}
}
