
// pass by reference
class A1
{
	int i;
	A1 a;
}
public class Manager9 {
	public static void main(String[] args) {
		A1 a1 = new A1();
		test(a1);
	}
	static void test(A1 a1)
	{
		System.out.println(a1.i);
	}

}
