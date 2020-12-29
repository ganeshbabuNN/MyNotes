import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// example program to demonstrate the read-only collection in java
public class ReadOnlyCollections {

public static void main(String args[]) {
	ArrayList<String> emp = new ArrayList<String>();
	
// creating a list
List godList = Arrays
.asList(new String[] { "Donald", "Dennis", "Ken" });

// making a read-only list
List list = new ArrayList(godList);
list = Collections.unmodifiableList(list);

// checking the reference in a read-only set
Set set = new HashSet(godList);
Collections.unmodifiableSet(set);

// the following statement allows to modify the above set as the
// reference is pointing to the original collection therefore it is not
// read-only
set.add("Alan");

// making a read-only map and try to modify it
Map godMap = new HashMap();
godMap.put("TAOCP", "Donald");
godMap.put("C", "Dennis");

godMap = Collections.unmodifiableMap(godMap);

try {
// modifying the read-only map to check what happens
godMap.put("Unix", "Ken");
} catch (UnsupportedOperationException e) {
System.out.println("You cannot modify a read only collection!");
}
}
}