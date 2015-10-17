class A
{
	int i;
	A a;
}
public class Manager {
	public static void main(String[] args) {
		A a1 = null;
		System.out.println(a1.a.a.a.a.a.a.a.a.i);
	}
}
