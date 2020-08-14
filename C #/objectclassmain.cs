using System;  
   public class Student  
    {  
        public int id;   
        public String name;  
   }  
   class TestStudent{  
       public static void Main(string[] args)  
        {  
            Student s1 = new Student();    
            s1.id = 101;  
            s1.name = "Sonoo Jaiswal";  
            Console.WriteLine(s1.id);  
            Console.WriteLine(s1.name);  
  
        }  
    }