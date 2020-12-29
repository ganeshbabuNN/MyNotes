class A1
{
	int i;	
}
public class Manager {
	public static void main(String[] args) {
		A1 a1 = new A1();
		A1 a2 = new A1();
		A1 a3 = new A1();
		A1 a4 = new A1();
		a1.i = 20;
		a2.i = 30;
		
		System.out.println("a1.i= " + a1.i);
		System.out.println("a1.i= " + a2.i);
		System.out.println("a1.i= " + a3.i);
		System.out.println("a1.i= " + a4.i);
	}
}
