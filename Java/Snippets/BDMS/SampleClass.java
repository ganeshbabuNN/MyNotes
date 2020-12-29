
class Class1 {
	int x =20;
}

class Class2<T>{
T oj;
Class2(T i){
	oj = i;
	
}
	
}
public class SampleClass {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Class1 obj1 = new Class1();
 		Class2<Class1> obj2 = new Class2<Class1>(obj1);
 		System.out.println("valus is " + obj2.getClass().getName());
 		System.out.println("valus is " + obj2.toString());
 		System.out.println("valus is " + obj2.oj.x);
 		

	}

}
