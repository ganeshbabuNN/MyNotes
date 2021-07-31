
class Example_Exception {
	static void demo() {
		
		Exception Bhuvan = new Exception("GOD");
		try {
			throw new Exception("Bhuvan");
			
		}catch (Exception e) {
			System.out.println("inside demo" );
			Bhuvan.notify();
//			System.out.println(Bhuvan.getCause());/
//			System.out.println(Bhuvan.getClass());
//			Bhuvan.getLocalizedMessage();
		}
}
}

public class Exception_throw {
	public static void main(String[] args) {

		try {
			Example_Exception.demo();
		}catch(Exception  e){
			System.out.println("inmain function" + e);
		}
	}

}
