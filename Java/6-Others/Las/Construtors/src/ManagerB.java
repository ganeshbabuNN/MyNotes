class A2
{
	static int i ;
}
public class ManagerB {
	public static void main(String[] args) {
		A2.i = 19;
		System.out.println(A2.i);
		A2 a1 = new A2();
		System.out.println(a1.i);
		A2 a2 = new A2();
		System.out.println(a2.i);
	}
}
