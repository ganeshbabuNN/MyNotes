
class Gen<T> {
	T ob;
	Gen(T o){
		ob = o;
	}
	
	T getob(){
			return ob;
	}
	void showType(){
			System.out.println("Type of T is" + ob.getClass());
	}
}	
	/**
	 * @param args
	 */
	public class GenMainClass{
		public static void main(String[] args) {
		// TODO Auto-generated method stub
         Gen<Integer> iOb;
         
         iOb = new Gen<Integer>(88);
         iOb.showType();
         int v = iOb.getob();
         System.out.println("value " + v);
         Gen<String> strob = new Gen<String>("Generic String Object");
         strob.showType();
         String str = strob.getob();
         System.out.println("value is "+ str);
         
         
         
			
	}

}
