class E
{
	public void test1()
	{
		System.out.println("Super-E");
	}
}
interface B4
{
	void test1();
}
class C2 extends E implements B
{	
	
}
public class ManagerE {
public static void main(String[] args) {
	C2 c1 = new C2();
	c1.test1();
}
}
