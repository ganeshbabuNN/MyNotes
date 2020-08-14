using System;  
public class Animal{  
    public string color = "white";  
}  
public class Dog: Animal  
{  
    string color = "black";  
    public void showColor()  
    {  
        Console.WriteLine(base.color);  
        Console.WriteLine(color);  
    }  
      
}  
public class TestBase  
{  
    public static void Main()  
    {  
        Dog d = new Dog();  
        d.showColor();  
    }  
} 