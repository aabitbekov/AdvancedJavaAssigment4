package astanait.com.Classes;

public class Book {
private String ISBN;
private String name;
private String author;
private String Image;
public Book() {
	
}

public String getImage() {
	return Image;
}
public void setImage(String image) {
	Image = image;
}
public Book(String iSBN, String name, String author, String image) {
	super();
	ISBN = iSBN;
	this.name = name;
	this.author = author;
	Image = image;
}
public Book(String iSBN, String name, String author) {
	super();
	ISBN = iSBN;
	this.name = name;
	this.author = author;
}
public Book(String[] bookFields) {
if(bookFields.length == 4) {
	this.ISBN = bookFields[0];
	this.name = bookFields[1];
	this.author = bookFields[2];
	this.Image = bookFields[3];
}

}
public String getISBN() {
	return ISBN;
}
public void setISBN(String iSBN) {
	ISBN = iSBN;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Override
public String toString() {
	return "Book [ISBN=" + ISBN + ", name=" + name + ", author=" + author + "]";
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}


	
	
}
