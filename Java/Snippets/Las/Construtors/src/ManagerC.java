class A3
{	
	static void test()
	{
		System.out.println("I'm in the test");
	}
}
public class ManagerC {
	public static void main(String[] args) {
		A3 a1 = new A3();
		A3 a2 = new A3();
		A3 a3 = new A3();
		A3 a4 = new A3();
		a1.test();
		a2.test();
		a3.test();		
	}
}
