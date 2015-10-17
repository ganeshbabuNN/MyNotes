import java.util.LinkedHashSet;
import java.util.SortedSet;
import java.util.TreeSet;



public class SortedSetExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		SortedSet<Integer> sset = new TreeSet<Integer>();
		sset.add(12);
		sset.add(13);
		sset.add(12);
		System.out.println(sset);
		LinkedHashSet<String> strs =  new LinkedHashSet();
		strs.add("Bhuvan");
		strs.add("sanil");
		strs.add("panday");
		System.out.println(strs);
	}

}
