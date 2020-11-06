package astanait.com;

import java.util.List;

public class Cart implements Inter<Product>{
	private List<Product> carts;

	public List<Product> getCarts() {
		return carts;
	}

	public void setCarts(List<Product> carts) {
		this.carts = carts;
	}
	

	@Override
	public List<Product> add(Product product) {
		carts.add(product);
		return carts;
	}

	@Override
	public List<Product> remove(Product product) {
		carts.remove(product);
		return carts;
	}
	

}
