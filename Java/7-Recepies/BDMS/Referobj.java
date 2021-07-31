
public class Referobj {

	
	public static void main(String[] args) {
		Box B1 = new Box();
		Box B3 = B1;
		
		B1.height = 20;B1.width=20;B1.depth=20;
	System.out.println("B1.Height=" + B1.height + "\nB1.Width=" + B1.width + "\nB1.depth=" + B1.depth);
	System.out.println("B3.Height=" + B3.height + "\nB3.Width=" + B3.width + "\nB3.depth=" + B3.depth);
	
	System.out.println("\n************************************************");
	B3.height=45;
	System.out.println("\nB1.height=" + B1.height );
	System.out.println("\nB3.height=" + B3.height );
	}

}
