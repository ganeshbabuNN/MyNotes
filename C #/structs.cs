using System;  
public struct Rectangle  
{  
    public int width, height;  
  
 }  
public class TestStructs  
{  
    public static void Main()  
    {  
        Rectangle r = new Rectangle();  
        r.width = 4;  
        r.height = 5;  
        Console.WriteLine("Area of Rectangle is: " + (r.width * r.height));  
    }  
}  