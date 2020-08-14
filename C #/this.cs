using System;  
   public class Employee  
    {  
        public int id;   
        public String name;  
        public float salary;  
        public Employee(int id, String name,float salary)  
        {  
            this.id = id;  
            this.name = name;  
            this.salary = salary;  
        }  
        public void display()  
        {  
            Console.WriteLine(id + " " + name+" "+salary);  
        }  
   }  
   class TestEmployee{  
       public static void Main(string[] args)  
        {  
            Employee e1 = new Employee(101, "Sonoo", 890000f);  
            Employee e2 = new Employee(102, "Mahesh", 490000f);  
            e1.display();  
            e2.display();  
  
        }  
    }  