class Book1
{
	String title;
	String author;
	double weight;
	int pages;
	String author()
	{
		return author;
	}
	int pages()
	{
		return pages;
	}
	String title()
	{
		return title;
	}
	double weight()
	{
		return weight;
	}
}
public class Manager1D {
	public static void main(String[] args) {
		Book1 b = new Book1();
		b.author = "ramesh";
		b.pages = 500;
		b.title = "corejava";
		b.weight = 2;
		System.out.println(b.author);
		System.out.println(b.title);
		System.out.println(b.pages);
		System.out.println(b.weight);
		
		System.out.println(b.title());
		System.out.println(b.weight());
	}
}
