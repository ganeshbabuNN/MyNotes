class A1
{
	int i;
	A1()
	{
		System.out.println(1);
	}
}
class B extends A1
{
	B(int i)
	{
		System.out.println(2);
		this.i = i;		
	}
}
public class Manager12 {
	public static void main(String[] args) {
		B b1 = new B(20);
		System.out.println(b1.i);
	}
}
