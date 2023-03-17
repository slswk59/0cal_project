package shopping.dto;

import member.dto.MemberDTO;


public class OrdersDTO {

	private int or_key;
	private int or_count;
	private int or_price;
	private String or_date;
	private String del_status;
	private MemberDTO memberDTO;
	private ProductDTO productDTO;
	

	public OrdersDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getOr_key() {
		return or_key;
	}

	public void setOr_key(int or_key) {
		this.or_key = or_key;
	}

	public int getOr_count() {
		return or_count;
	}

	public void setOr_count(int or_count) {
		this.or_count = or_count;
	}

	public int getOr_price() {
		return or_price;
	}

	public void setOr_price(int or_price) {
		this.or_price = or_price;
	}

	public String getOr_date() {
		return or_date;
	}

	public void setOr_date(String or_date) {
		this.or_date = or_date;
	}

	public String getDel_status() {
		return del_status;
	}

	public void setDel_status(String del_status) {
		this.del_status = del_status;
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
