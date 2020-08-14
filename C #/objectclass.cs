using System;  
   public class Student  
    {  
        int id;//data member (also instance variable)    
        String name;//data member(also instance variable)    
         
    public static void Main(string[] args)  
        {  
            Student s1 = new Student();//creating an object of Student    
            s1.id = 101;  
            s1.name = "Sonoo Jaiswal";  
            Console.WriteLine(s1.id);  
            Console.WriteLine(s1.name);  
  
        }  
    }  