
interface AC
{
	int i = 0;
	void test();
}
public class ManagerJ implements AC{
	public void test()
	{
		System.out.println("Manager");
	}
	public static void main(String[] args) {
		System.out.println(AC.i);
	}	
}
