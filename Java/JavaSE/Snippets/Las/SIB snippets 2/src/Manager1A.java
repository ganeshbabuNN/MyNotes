
class A1
{
	static int i = 10;
	static
	{
		System.out.println("I'm in the SIB of A");
	}	
	static void test1()
	{
		System.out.println("I'm in the test1 of A");
	}
	static void test2()
	{
		System.out.println("I'm in the test2 of A");
	}
}
class B1
{
	static int i = 20;
	static void test()
	{
		System.out.println("I'm in the test() of B");
	}
	static
	{
		System.out.println("I'm in the SIB of B");
	}
}
public class Manager1A {
	public static void main(String[] args) {
		System.out.println("I'm in the main");
		A1.test1();
		A1.test2();
		B1.test();
	}
}
