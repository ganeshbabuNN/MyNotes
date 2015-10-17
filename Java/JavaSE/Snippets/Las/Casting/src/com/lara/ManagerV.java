package com.lara;

class A21
{

}
class B21 extends A21
{

}
class C21 extends B21
{

}
public class ManagerV {
	public static void main(String[] args) {
		Object all[] = new Object[5];
		Object o1 = new Object();
		A21 a1 = new A21();
		B21 b1 = new B21();
		C21 c1 = new C21();
		ManagerV m1 = new ManagerV();
		all[0] = m1;
		all[1] = c1;
		all[2]= b1;
		all[3]= a1;
		all[4] = o1;
		Object obj = null;
		for(int i =0; i<all.length;i++)
		{
			obj = all[i];
			if(obj instanceof Object)
			{
				System.out.println("Object type");
			}
			if(obj instanceof A21)
			{
				System.out.println("A type");
			}
			if(obj instanceof B21)
			{
				System.out.println("B type");
			}
			if(obj instanceof C21)
			{
				System.out.println("C type");
			}
			if(obj instanceof ManagerV)
			{
				System.out.println("Managerv type");
			}
			System.out.println("-------");
		}
			
	}
}
