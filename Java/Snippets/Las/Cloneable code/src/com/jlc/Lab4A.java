package com.jlc;
class Hai
{
	int x;
	public Hai(int x) {
		this.x = x;
	}
}
class Hello implements Cloneable
{
	int y;
	Hai hai;
	public Hello(int y, Hai hai) {
		super();
		
		this.y = y;
		this.hai = hai;
	}
	void show()
	{
		System.out.println("show()");
		System.out.println(y);
		System.out.println(hai.x);
	}
	public Hello myClone()
	{
		Object ob = null;
		Hello h = null;
		try
		{
			ob = this.clone();
			h = (Hello)ob;			
		}
		catch (CloneNotSupportedException e) {
			System.out.println(e);
		}
		return h;
	}	
}
public class Lab4A
{
	public static void main(String[] args) {
		Hai hai = new Hai(10);
		Hello h1 = new Hello(20,hai);
		Hello h2 = h1; // copy the same address of h1 to h2
		System.out.println(h2 == h1);
		h1.show();
		Hello h3 = h1.myClone();
		System.out.println(h3 == h1);
		h3.show();
		System.out.println(h1.hashCode());
		System.out.println(h3.hashCode());
	}
}

