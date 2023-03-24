package shopping.dto;

import member.dto.MemberDTO;

public class ProductDTO {
	private int pr_key; //상품고유키
	private String pr_name; //상품명
	private String pr_thumbnail; //상품썸네일
	private int pr_price; //상품정상가
	private int pr_dcprice; //상품판매가
	private double pr_dcper; //상품할인률
	private String pr_detailimage; //상품상세페이지
	private String pr_reg_date; //상품등록일
	private String pr_theme; //상품테마구분
	private OrdersDTO ordersDTO;
	private Or_detailDTO or_detailDTO;
	private MemberDTO memberDTO;
	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
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

	public String getPr_thumbnail() {
		return pr_thumbnail;
	}

	public void setPr_thumbnail(String pr_thumbnail) {
		this.pr_thumbnail = pr_thumbnail;
	}

	public int getPr_price() {
		return pr_price;
	}

	public void setPr_price(int pr_price) {
		this.pr_price = pr_price;
	}

	public int getPr_dcprice() {
		return pr_dcprice;
	}

	public void setPr_dcprice(int pr_dcprice) {
		this.pr_dcprice = pr_dcprice;
	}

	public double getPr_dcper() {
		return pr_dcper;
	}

	public void setPr_dcper(double pr_dcper) {
		this.pr_dcper = pr_dcper;
	}

	public String getPr_detailimage() {
		return pr_detailimage;
	}

	public void setPr_detailimage(String pr_detailimage) {
		this.pr_detailimage = pr_detailimage;
	}

	public String getPr_reg_date() {
		return pr_reg_date;
	}

	public void setPr_reg_date(String pr_reg_date) {
		this.pr_reg_date = pr_reg_date;
	}

	public String getPr_theme() {
		return pr_theme;
	}

	public void setPr_theme(String pr_theme) {
		this.pr_theme = pr_theme;
	}

	public OrdersDTO getOrdersDTO() {
		return ordersDTO;
	}

	public void setOrdersDTO(OrdersDTO ordersDTO) {
		this.ordersDTO = ordersDTO;
	}

	public Or_detailDTO getOr_detailDTO() {
		return or_detailDTO;
	}

	public void setOr_detailDTO(Or_detailDTO or_detailDTO) {
		this.or_detailDTO = or_detailDTO;
	}

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}
	
	

}
