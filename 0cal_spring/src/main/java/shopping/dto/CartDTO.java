package shopping.dto;

import member.dto.MemberDTO;

public class CartDTO {
	
	private int cart_key;
	private int cart_count;
	private int cart_price;
	private String cart_reg_date;
	private String cart_del_date;
	private String id;
	private int pr_key;
	private MemberDTO memberDTO;
	private ProductDTO productDTO;
	
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPr_key() {
		return pr_key;
	}

	public void setPr_key(int pr_key) {
		this.pr_key = pr_key;
	}

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}


	
	
}
