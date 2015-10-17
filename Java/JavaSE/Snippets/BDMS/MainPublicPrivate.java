
class AA extends PublicPrivate {
	
}
class BB {
	PublicPrivate xx = new PublicPrivate();
	void display(){
		System.out.println("x is not accesasbe");
		System.out.println("y value is " + xx.y);
		System.out.println("Z value is " + xx.z);
		System.out.println("x1 value is not accessable"); 
		System.out.print("X1 is not accessable");
		System.out.println("Y1 valie is " + PublicPrivate.y1);
		System.out.println("Z1 value is " + PublicPrivate.z1);
				
	}
}

public class MainPublicPrivate {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	AA a = new AA();
	BB b = new BB();
	b.display();
	System.out.println("**************************************");
	System.out.println("x is not accesasbe");
	System.out.println("y value is " + a.y);
	System.out.println("Z value is " + a.z);
	System.out.println("x1 value is not accessable"); 
	System.out.print("X1 is not accessable" );
	System.out.println("Y1 valie is " + PublicPrivate.y1);
	System.out.println("Z1 value is " + PublicPrivate.z1);
	
	}

}
