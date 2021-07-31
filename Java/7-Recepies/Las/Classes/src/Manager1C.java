class Book
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
}
public class Manager1C 
{
	public static void main(String[] args) {
		Book b = new Book();
		b.author = "ramesh";
		b.pages = 500;
		b.title = "corejava";
		b.weight = 2;
		System.out.println(b.author);
		System.out.println(b.pages);
		System.out.println(b.title);
		System.out.println(b.weight);
	}
}
