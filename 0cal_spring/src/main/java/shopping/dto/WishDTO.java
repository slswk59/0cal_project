package shopping.dto;

public class WishDTO {
	private int wish_key;
	private String wish_reg_date;
	private int pr_key;
	private String pr_name;
	private int pr_price;
	private String pr_thumbnail;
	private double pr_dcper;
	private ProductDTO productDTO;
	private String id;
	private int cart_count;
	private int cart_price;
	
	


	public WishDTO() {
		// TODO Auto-generated constructor stub
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

	public int getWish_key() {
		return wish_key;
	}

	public void setWish_key(int wish_key) {
		this.wish_key = wish_key;
	}

	public String getWish_reg_date() {
		return wish_reg_date;
	}

	public void setWish_reg_date(String wish_reg_date) {
		this.wish_reg_date = wish_reg_date;
	}

	public int getPr_key() {
		return pr_key;
	}

	public void setPr_key(int pr_key) {
		this.pr_key = pr_key;
	}

	public String getPr_name() {
		return pr_name;
	}

	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}

	public int getPr_price() {
		return pr_price;
	}

	public void setPr_price(int pr_price) {
		this.pr_price = pr_price;
	}

	public String getPr_thumbnail() {
		return pr_thumbnail;
	}

	public void setPr_thumbnail(String pr_thumbnail) {
		this.pr_thumbnail = pr_thumbnail;
	}

	public double getPr_dcper() {
		return pr_dcper;
	}

	public void setPr_dcper(double pr_dcper) {
		this.pr_dcper = pr_dcper;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	

	

	
}
