interface AJ
{
	void test();
}
class B10 
{
	void test1()
	{
		System.out.println("B");
	}
}
interface CH
{
	void test2();	
}
public class ManagerP implements AJ,CH {
	@Override
	public void test() {
		System.out.println(1);
	}
	void test1()
	{
		System.out.println(2);
	}
	@Override
	public void test2() {
		System.out.println(3);
	}
	public static void main(String[] args) {
		System.out.println("Main");
		ManagerP m1 = new ManagerP();
		m1.test();
		m1.test1();
		m1.test2();
	}
}
