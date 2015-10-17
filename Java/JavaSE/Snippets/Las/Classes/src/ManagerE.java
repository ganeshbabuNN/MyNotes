
public class ManagerE {
	static int i = 20;
	static {
		ManagerE m1 = new ManagerE();
		m1.i = 10;
		System.out.println("SIB= " + m1.i);
	}
	public static void main(String[] args) {
		ManagerE m1 = new ManagerE();
		System.out.println("m1.i = " + m1.i);
	}
}
