import java.util.Hashtable;



public class HashTableCollisson {

	public static void main(String[] args) {
		Hashtable<String, String> myhash = new Hashtable<String, String>(10);
		myhash.put("Bhuvan", "Sanil");
		myhash.put("Brijesh", "Panday");
		myhash.put("Kon", "Nanjesh");
		myhash.put("Shayan", "devaiah");
		myhash.put("Reena", "ross");
		
		for(int i =0;i<100000;i++){
			myhash.put("name" + i , "name" + i);
		}
		System.out.println(myhash.entrySet());
		

	}

}
