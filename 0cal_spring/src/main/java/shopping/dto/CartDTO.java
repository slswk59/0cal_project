package shopping.dto;

public class CartDTO {
	
	private int cart_key;
	private int cart_count;
	private int cart_price;
	private String cart_reg_date;
	private String cart_del_date;
	
	public CartDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getCart_key() {
		return cart_key;
	}

	public void setCart_key(int cart_key) {
		this.cart_key = cart_key;
	}

	public int getCart_count() {
		return cart_count;
	}

	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}

	public int getCart_price() {
		return cart_price;
	}

	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}

	public String getCart_reg_date() {
		return cart_reg_date;
	}

	public void setCart_reg_date(String cart_reg_date) {
		this.cart_reg_date = cart_reg_date;
	}

	public String getCart_del_date() {
		return cart_del_date;
	}

	public void setCart_del_date(String cart_del_date) {
		this.cart_del_date = cart_del_date;
	}
	
	

}
