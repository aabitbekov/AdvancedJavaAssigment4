package astanait.com;

public class Product {
private Categories categories;
private String mark;
private String model;
private String price;
private String image;
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public Product(Categories categories, String mark, String model, String price,String image) {
	super();
	this.categories = categories;
	this.mark = mark;
	this.model = model;
	this.price = price;
	this.image = image;

}
public Product(String mark2, String model2, String price2, String image2) {
	// TODO Auto-generated constructor stub
}
public Categories getCategories() {
	return categories;
}
public void setCategories(Categories categories) {
	this.categories = categories;
}
public String getMark() {
	return mark;
}
public void setMark(String mark) {
	this.mark = mark;
}
public String getModel() {
	return model;
}
public void setModel(String model) {
	this.model = model;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
@Override
public String toString() {
	return "Product [categories=" + categories + ", mark=" + mark + ", model=" + model + ", price=" + price + "]";
}



}
