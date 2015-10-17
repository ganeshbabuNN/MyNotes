package com.lara1;

abstract class G4
{
	void test()
	{
		System.out.println("A");
	}
}
public class Manager1E extends G4
{
	void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		G4 a1 = new Manager1E();
		((G4)a1).test();
	}

}
