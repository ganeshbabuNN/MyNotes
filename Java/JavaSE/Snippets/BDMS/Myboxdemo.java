
public class Myboxdemo {

		public static void main(String[] args) {
			Box B1 = new Box();
			Box B2 = new Box();
			
			B1.height = 20;B1.width=20;B1.depth=20;
			B2.height = 10;B2.width=10;B2.depth=10;

		int boxb1 = B1.height + B1.width + B2.depth;
		int boxb2 = B2.height * B2.width * B2.depth;

		System.out.println("\n box B1" + boxb1);
		System.out.println("\n box B2" + boxb2);

	B1.volume();
	B2.volume();
	
	int x = B1.volume2();
	
	System.out.println("Return Volume="+ x);
		}
}
