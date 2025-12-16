class R
{
	static void test()
	{
		System.out.println("I'm in the test of R");
	}
}
class S
{
	static void test()
	{
		System.out.println("I'm in the test of S");
	}
}
public class T {
	static void test()
	{
		System.out.println("I'm in the test of T");
	}
	public static void main(String[] args) {
		test();
		T.test();
		S.test();
		R.test();
	}	
}
