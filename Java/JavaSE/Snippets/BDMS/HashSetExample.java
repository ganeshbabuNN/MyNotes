import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;


public class HashSetExample {

	public static void main(String[] args) {
		Set<String> myhashset = new HashSet<String>();
		
		myhashset.add("Bhuvan");
		myhashset.add("Sanil");
		myhashset.add("Rakshith");
		myhashset.add("Arun");
		//System.out.println(myhashset);
		//Iterator<String> str = myhashset.iterator();
		//while(str.hasNext()){
			//System.out.print(str.next());
			
		//}
		myhashset.add("Bhuvan");
		//System.out.println(myhashset);
		Set<String> subset = new HashSet<String>();
		subset.add("Bhuvan");
		subset.add("Sanil");
		subset.add("A");
		
		myhashset.retainAll(subset);
		
		
		subset.retainAll(myhashset);
		System.out.println(myhashset);
		System.out.println(subset);
		
	}

}
