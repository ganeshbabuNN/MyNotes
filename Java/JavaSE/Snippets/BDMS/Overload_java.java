
public class Overload_java {

	
	public static void main(String[] args) {
		
		Overload_ex obj1 = new Overload_ex();
		char x = obj1.retrun_function();
		int b = obj1.retrun_function();
		int c =obj1.return_function(3, 3);
		System.out.println("\nchar=" + x + "\n int= " + b + "\n Sum=" + c);
		
	}

}
