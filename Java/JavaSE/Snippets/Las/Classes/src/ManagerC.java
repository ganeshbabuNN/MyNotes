class B
{
	static int i;
}
public class ManagerC {
	public static void main(String[] args) {
		B b1 = new B();
		B b2 = new B();
		B b3 = new B();
		B b4 = new B();
		b1.i = 22;
		b2.i = 33;
		System.out.println("b1.i= " + b1.i);
		System.out.println("b2.i= " + b2.i);
		System.out.println("b3.i= " + b3.i);
		System.out.println("b4.i= " + b4.i);
	}
}
