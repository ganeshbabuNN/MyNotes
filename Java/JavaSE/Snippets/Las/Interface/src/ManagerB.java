interface A2
{
	void test1();
}
abstract class B2
{
	public abstract void test1();
}
class C1 extends B2 implements A
{
	@Override
	public void test1() {
		System.out.println("test");		
	}
}
public class ManagerB {
	public static void main(String[] args) {
		C1 c1 = new C1();
		c1.test1();
	}
}
