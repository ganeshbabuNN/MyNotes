using System;  
namespace AccessSpecifiers  
{  
    class InternalTest  
    {  
        internal string name = "Shantosh Kumar";  
        internal void Msg(string msg)  
        {  
            Console.WriteLine("Hello " + msg);  
        }  
    }  
    class Program  
    {  
        static void Main(string[] args)  
        {  
            InternalTest internalTest = new InternalTest();  
            // Accessing internal variable  
            Console.WriteLine("Hello " + internalTest.name);  
            // Accessing internal function  
            internalTest.Msg("Peter Decosta");  
        }  
    }  
}  