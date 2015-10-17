interface A1
{
	void test1();
}
interface B1
{
	void test1(int i);
}
interface C2 extends A,B1
{
	void test1(double d);
}
class D implements A1,B1,C2
{
	@Override
	public void test1() {
		System.out.println("test");
	}
	public void test1(int k)
	{
		System.out.println("int");
	}
	public void test1(double d)
	{
		System.out.println("double");
	}
}
public class ManagerA {
	public static void main(String[] args) {
		D d1 = new D();
		d1.test1();
		d1.test1(10);
		d1.test1(100.20);
	}
}
