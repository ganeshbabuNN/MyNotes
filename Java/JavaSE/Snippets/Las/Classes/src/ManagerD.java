
public class ManagerD {
	static int i = 10;
	static {
		ManagerD m1 = new ManagerD();
		m1.i = 10;
		System.out.println("SIB= " + m1.i);
	}
	public static void main(String[] args) {
		ManagerD m1 = new ManagerD();
		System.out.println("m1.i = " + m1.i);
	}
}
