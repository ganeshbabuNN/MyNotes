class A3
{
	public void test1()
	{
		System.out.println("Test1-A");
	}
}
class B3 extends A3
{
	public void test2()
	{
		System.out.println("test2-B");
	}
}
interface C4
{
	void test1();
	void test2();
}
class D1 extends B3 implements C4
{
	
}
public class ManagerD {
	public static void main(String[] args) {
		D1 d = new D1();
		d.test1();
		d.test2();

	}
}
