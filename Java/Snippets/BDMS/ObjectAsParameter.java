
class one {
	int x = 20;
}
class two extends one {
	int b;
	two newobj = new two();

	Object getsum(Object y){
		newobj.b = x;		
		return newobj;
	}
}

public class ObjectAsParameter {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	one obj1 = new one();
	two obj2 = new two();
	obj2.getsum(obj1);
System.out.println(""+ obj2.newobj.b);
	}

}
