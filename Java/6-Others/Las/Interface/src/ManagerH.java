
interface AA
{
	void test();
}
public class ManagerH extends AA{
	void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		ManagerH a1 = new ManagerH();
		a1.test();
	}	
}
