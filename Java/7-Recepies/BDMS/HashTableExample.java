import java.util.Enumeration;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;


public class HashTableExample {

	public static void main(String[] args) {
	
		Hashtable<String, Integer> nameage = new Hashtable<String, Integer>();
		nameage.put("Bhuvan", 25);
		nameage.put("Panday", 25);
		nameage.put("kon", 25);
		nameage.put("kon",28);
		
		System.out.println(nameage);
		System.out.println("Bhuvans age is " + nameage.get("Bhuvan"));
		System.out.println("Size of hash table is " + nameage.size());
		System.out.println("hashtable has elements ?:" + nameage.isEmpty());
		System.out.println("keys of hash table is " + nameage.keys());
		System.out.println("value of hashtable is " + nameage.values());
		
		Set<String> iterset = nameage.keySet();
		
		for(String key :iterset){
			System.out.println(nameage.get(key));
		}
	
		if (nameage.containsKey("Bhuvan")){
			System.out.println(nameage.get("Bhuvan"));
		}
		Set<String> keyset = nameage.keySet();
		
		for(String str:keyset){
			System.out.println(str);
		}
	
		Set<Entry<String, Integer>> ekey = nameage.entrySet();
		System.out.println(ekey);
		Enumeration<String> keyname = nameage.keys();
		
		while(keyname.hasMoreElements()){
			System.out.println(keyname.nextElement());
		}
	
		Hashtable<String, LinkedList<Integer>> myhash= new Hashtable<String, LinkedList<Integer>>();
		
		myhash.put("abc",new LinkedList<Integer>());
		System.out.print(myhash);
		
	}
	
}
