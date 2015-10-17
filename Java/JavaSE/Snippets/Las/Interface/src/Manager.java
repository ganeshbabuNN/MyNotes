interface A
{
	void test1();
}
interface B extends A
{
	void test2();
}
class C implements B
{
	public void test1()
	{
		System.out.println("test1");
	}
	public void test2()
	{
		System.out.println("test2");
	}
}
public class Manager {
	public static void main(String[] args) {
		CG c1 = new CG();
		c1.test1();
		c1.test2();
		
	}
}
