
interface AB
{
	void test();
}
public class ManagerI implements AB{
	protected void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		AB a1 = new AB();
		a1.test();
	}	
}
