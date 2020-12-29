
public class Inheritance_java {

	
	public static void main(String[] args) {
		
	Super_Class obj1 = new Super_Class();
	subclass obj2 = new subclass();

	obj1.i = 10;
	obj1.j = 20;
	
	obj1.disp();
	
	obj2.disp();
	obj2.i = 5;
	obj2.j = 6;
	obj2.k = 7;
	
	obj2.disp();
	}

}
