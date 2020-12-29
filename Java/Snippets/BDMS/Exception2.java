
public class Exception2 {

	int a = 2;
	
	void example(){
		try {
			if ( a == 2){
				throw new NullPointerException("bhuvan");
			}
		}catch( Exception  e){
			System.out.println("Exception" + e);
		//throw e;
		}
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Exception2 ee = new Exception2();
	try{
	ee.example();
	
	}catch(Exception e){
		System.out.println("Exception" + e);
	}
	}

}
