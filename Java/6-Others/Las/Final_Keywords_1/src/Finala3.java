class A6
{
	final int i; // may note be intantisatied
	static
	{
		System.out.println("THis is As SIB");
	}
	void test1()
	{
		System.out.println("i value in A" + i);
		System.out.println("this is in Test1() of A6");
	}
}
class B6 extends A6
{
	int j;
	void test1()
	{
		super.test1();
		System.out.println("this is in test1()from B6");
	}
	void test2()
	{
		j = i+100;
		System.out.println("J in B class j = i+100" + j);
		System.out.println("this is in test2()");
	}
	static
	{
		System.out.println("this is B's SIB");
	}
}
public class Finala3 {
		public static void main(String[] args) {
			B6 b = new B6();
			b.test1();
			b.test2();
			B6 b1 = new B6();
			b1.test1();
		}
}
