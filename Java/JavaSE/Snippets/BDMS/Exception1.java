
public class Exception1 {

	int d = 0;
	void calculate(){
		try{
		float x = 25 / d;
		System.out.println(x);
		}catch( ArithmeticException e){
			System.out.println(e.toString());
		}
		}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Exception1 ee = new Exception1();
	ee.calculate();
	}

}
