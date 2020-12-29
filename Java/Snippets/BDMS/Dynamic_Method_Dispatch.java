
class A {
	void disp(){
		System.out.println("\n Inside Class A");
		
	}
}

class B extends A {
	void disp(){
		System.out.println("\n inside class B");
		
	}
}
class C extends B {
	void disp(){
		System.out.println("\n inside class C");
		
	}
}
public class Dynamic_Method_Dispatch {

	
	public static void main(String[] args) {
	
 A a = new A();
 B b = new B();
 C c = new C();
 
 A obj;
 
 obj = a;
 
 obj.disp();
 
obj = b;

obj.disp();

obj = c;
obj.disp();
	}

}
