
public class Overload_const_java {

	
	public static void main(String[] args) {
		overload_const obj1 = new overload_const();
		System.out.println("\n Object 1");
		obj1.sum();
		overload_const obj2 = new overload_const(100,100);
		System.out.println("\n Object 2");
		obj2.sum();
	}
}
