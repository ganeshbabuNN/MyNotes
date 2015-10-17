import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Vector;


public class EnumerationExample {

	public static void main(String[] args) {
		Vector<String> liststring = new Vector<String>();
		liststring.add("bhuvan");
		liststring.add("Panday");
		liststring.add("Kon");
		liststring.add("vijay");
		liststring.add("akashath");
		Enumeration<String> names;
		names = liststring.elements();
		while(names.hasMoreElements()){
			System.out.println(names.nextElement());
		}
		
		//clonning vector
		@SuppressWarnings("unchecked")
		Vector<String> clonev = (Vector<String>)liststring.clone();
		System.out.println(clonev);
		
		//adding all valus from array list
		
		List<String> alist = new ArrayList<String>();
		alist.add("piks");
		alist.add("kkis");
		alist.add("ckis");
		
		liststring.addAll(alist);
		System.out.println(alist);
		
		//ciopy vector to array
		
		String[] copyarr = new String[clonev.size()];
		clonev.copyInto(copyarr);
		for(String str: copyarr){
			System.out.println(str);
		}
		
		int[] k = {1,2,3,4,5};
		for(int l : k){
			System.out.println(l);
		}
		
		List<String> abc = new ArrayList<String>();
		abc.add("bhuvan");
		
		
		System.out.println("list namelist contains all elemenst of abc: " + liststring.containsAll(abc));
		
		abc.add("kapi");
		
		System.out.println("list namelist contains all elemenst of abc: " + liststring.containsAll(abc));
		
		List<String> sublist = liststring.subList(1, 2);
		System.out.println(sublist);
	}

}
