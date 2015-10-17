
public class Passing_obj_java {

	
	public static void main(String[] args) {
		Passing_obj obj1 = new Passing_obj(100);
		Passing_obj obj2 = new Passing_obj(100);
		Passing_obj obj3 = new Passing_obj(400);
		
System.out.println("obj1 = obj2:" + obj1.equal_fun(obj2));
System.out.println("obj2 = obj3:" + obj2.equal_fun(obj3));
	}

}
