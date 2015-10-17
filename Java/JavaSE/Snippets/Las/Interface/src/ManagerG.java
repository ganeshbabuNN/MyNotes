abstract interface A4
{
	void test();
}
public class ManagerG extends A4
{
	void test()
	{
		System.out.println("manager");
	}
	public static void main(String[] args) {
		ManagerG a1 = new ManagerG();
		a1.test();
	}
}
