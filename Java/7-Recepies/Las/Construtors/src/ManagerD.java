class A4
{	
	int i;
	static int j;
}
public class ManagerD {
	public static void main(String[] args) {
		System.out.println(A4.j);
		A4.j = 10;
		System.out.println(A4.j);
		A4 a1 = new A4();
		System.out.println(a1.i);
		a1.i = 10;
		A4 a2 = a1;
		System.out.println(a2.i);
		a2.i = 20;
		System.out.println(a1.i);
		
	}
}
