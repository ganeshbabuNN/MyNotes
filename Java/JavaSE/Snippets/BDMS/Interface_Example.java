
interface interface1{
	int x =10;
	void display(int y);
}

class Class1 implements interface1{
	int class1_int ;
	Class1(int z) {
		
		class1_int = z; 

	}
public void display(int y){
	class1_int = class1_int + y;
	System.out.println("\n Class1 ="+ class1_int);
}
	
}

class Class2 implements interface1{
	int class2_int;
	Class2( int z){
		class2_int = z;
		
	}
public void display(int y){
	class2_int = class2_int + y;
	System.out.println("\n Class2 ="+ class2_int);
	
}
}
public class Interface_Example {

	public static void main(String[] args) {

	Class1 c1obj = new Class1(10);
	Class2 c2obj = new Class2(20);
	System.out.println("Class1 obj = ");
	c1obj.display(10);
	System.out.println("Class2 obj = ");
	c2obj.display(20);
	
	interface1 ent1 = new Class1(30);
	System.out.println("INterface1");
	ent1.display(30);
	System.out.println("interface2");
	interface1 ent2 = new Class2(40);
	ent2.display(40);
	
	
	}

}
