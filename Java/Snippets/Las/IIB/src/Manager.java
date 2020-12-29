class A
{
	A()
	{
		System.out.println("object created");
	}
	A(int i)
	{
		System.out.println("Object created");
	}
	A(int i, int j)
	{
		System.out.println("Objects created");
	}
}
public class Manager {
	public static void main(String[] args) {
		A a1 = new A();
		A a2 = new A(12);
		A a3 = new A(10,20);
	}
}
