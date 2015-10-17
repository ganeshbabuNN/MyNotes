interface A5
{
	void test1();
}
abstract class B5
{
	abstract public void test1();
}
class C3 extends B5 implements A5
{
	@Override
	public void test1() {
		System.out.println("test");		
	}
}
public class ManagerF {
	public static void main(String[] args) {
		C3 c1 = new C3();
		c1.test1();
	}
}
