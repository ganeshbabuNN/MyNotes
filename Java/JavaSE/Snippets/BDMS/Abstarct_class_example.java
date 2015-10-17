
abstract class Parent_class {
	abstract void callme();
protected  void display(){
	System.out.println("Parent Class");
}
}

class child_class extends Parent_class{
	
	void callme(){
		super.display();
		System.out.println("Child class");
		
	}
}

public class Abstarct_class_example {

	
	public static void main(String[] args) {

		child_class obj1 = new child_class();
		obj1.callme();
	
		
		
		
	}

}
