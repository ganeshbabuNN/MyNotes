
class example {
	static int x = 200;
    static void display(int y ){
	System.out.println("Static function" + y);
	
}
}

public class Static_example {

	public static void main(String[] args) {

		example.display(40);
		System.out.println("integer x is " + example.x );

	}

}
