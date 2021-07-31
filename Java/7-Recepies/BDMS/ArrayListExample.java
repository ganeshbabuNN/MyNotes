import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ArrayListExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<String> namelist = new ArrayList<String>();
				
		namelist.add("bhuvan");
		namelist.add("panday");
		namelist.add("kon");
		namelist.add(1, "none");
		
		//usinf Iterator
		System.out.println("Using Iterator");
		Iterator<String> str = namelist.iterator();
		
		while(str.hasNext()){
			System.out.println(str.next());
		}
		
		//using for loop
		System.out.println("using forloop");
		int x = namelist.size();
		
		
		for(int i = 0 ; i < x ; i++){
			System.out.println(namelist.get(i));
		}
		
		//copying to new list
		
		ArrayList<String> newsublist = new ArrayList<String>(namelist);
		
		//after copyling
		
		System.out.println("after coplyind arraylist" + newsublist);
		
		//add all emenets example from another arraylist
		
		List<String> list2  = new ArrayList<String>();
		list2.add("bhuvan2");
		list2.add("panday2");
		namelist.addAll(list2);
		//namelist.addAll(namelist);
		System.out.println(namelist);
		
		//delete 1 element
		
		namelist.remove(1);
		namelist.remove("panday2");
		
		System.out.println(namelist);
		
		//create a subset
		
		List<String> subsetlist = new ArrayList<String>((namelist.subList(1, 1)));
		System.out.println(subsetlist);
		
		namelist.add("arun");
		namelist.add("vinod");
		namelist.add("batia");
		
		Collections.sort(namelist);
		
		//sorting arraylist
		System.out.println(namelist);
		
		//reverse list
		
		Collections.reverse(namelist);
		System.out.println(namelist);
		
		//shuffle
		
		Collections.shuffle(namelist);
		System.out.println(namelist);
		
		//swap two elements
		
		Collections.swap(namelist, 1, 2);
		
		System.out.println(namelist);
	}

}
