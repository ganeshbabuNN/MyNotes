import java.util.ArrayList;


public class CollectionExample {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Integer my_int = new Integer(20);
		Integer my_int2 = new Integer(20);
		if ( my_int.equals(my_int2) ) {
			System.out.println("match" + my_int);
		}
		else
		{
			System.out.println("no match");
		}
	ArrayList<Integer> int1 = new ArrayList<Integer>();
	int1.add(6);
	System.out.println("lenght is" + int1.get(0));
	}

}
