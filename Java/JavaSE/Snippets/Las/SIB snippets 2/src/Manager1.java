
class A
{
	static int i = 10;
	static
	{
		System.out.println("I'm in the SIB of A");
	}	
}
class B
{
	static void test()
	{
		System.out.println("I'm in the sib of B");
	}
}
public class Manager1 {
	public static void main(String[] args) {
		System.out.println("I'm in the main");
		System.out.println(A.i);
		B.test();
	}
}
