class A
{
	A(int i)
	{
		System.out.println(1);
	}
}
class B1 extends A
{
	B1(int i)
	{
		System.out.println(2);
	}
}
public class Manager {
	public static void main(String[] args) {
		A a1= new A(10);
		B1 b1 = new B1(20);		
	}
}
