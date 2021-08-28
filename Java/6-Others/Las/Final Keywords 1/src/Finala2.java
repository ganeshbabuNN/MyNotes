class A5
{
	int i =12;
	static
	{
		System.out.println("value in A" + i); // cannot make 
		System.out.println("THis is As SIB");
	}
	void test1()
	{
		System.out.println("this is in Test1()");
	}
}
class B5 extends A5
{
	
	void test1()
	{
		System.out.println("this is in test1()");
	}
	void test2()
	{
		System.out.println("this is in test2()");
	}
	static
	{
		System.out.println("this is B's SIB");
	}
}
public class Finala2 {
		public static void main(String[] args) {
			B3 b = new B3();
			b.test1();
			b.test2();
		}
}
