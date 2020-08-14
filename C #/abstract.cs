using System;  
public abstract class Shape  
{  
    public abstract void draw();  
}  
public class Rectangle : Shape  
{  
    public override void draw()  
    {  
        Console.WriteLine("drawing rectangle...");  
    }  
}  
public class Circle : Shape  
{  
    public override void draw()  
    {  
        Console.WriteLine("drawing circle...");  
    }  
}  
public class TestAbstract  
{  
    public static void Main()  
    {  
        Shape s;  
        s = new Rectangle();  
        s.draw();  
        s = new Circle();  
        s.draw();  
    }  
} 