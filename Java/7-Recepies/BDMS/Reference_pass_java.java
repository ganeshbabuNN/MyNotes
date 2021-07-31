
public class Reference_pass_java {

	
	public static void main(String[] args) {
		Reference_pass obj1 = new Reference_pass(100);
		System.out.println("Current value" + obj1.x);
		obj1.modify(obj1);
		System.out.println("Current value" + obj1.x);
		
		

	}

}
