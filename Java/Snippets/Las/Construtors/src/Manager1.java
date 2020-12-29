class B
{
	int q;
	static int p;
}
public class Manager1 {
	public static void main(String[] args) {
		B b1 = new B();
		B b2 = new B();
		B b3 = null;
		
		System.out.println(b1.q);
		System.out.println(b2.q = 20);
		b3 = b2;
		System.out.println(b3.q);
		b3.q = 30;
		System.out.println(b2.q);
		System.out.println(b1.q = 100);
		System.out.println(b1.q);
		System.out.println(B.p);
		
		
	}
}
