class X
{
	static int i = 100;
	static void test()
	{
		System.out.println("I'm in the test of X");
	}	
}
public class Manager {
	public static void main(String[] args) {
		X.test();
	}
}

