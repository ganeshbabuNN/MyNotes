
class A {
	int x = 0;
A(int j){
	x = j;
}
}

class B {
	void display(A a){
	System.out.println("value of x is " + a.x);
		
	}

}
public class MyTestClass {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	A a = new A(20);
	B b = new B();
	b.display(a);
	
	
	
	}

}
