class A7
{
	final int i; // may note be intantisatied
	void test1()
	{
		System.out.println("i value in A" + i);
		System.out.println("this is in Test1() of A6");
	}
}
public class Finala4 {
	public static void main(String[] args) {
		A7 a1 = new A();
		System.out.println(a1.i);
	}
}
