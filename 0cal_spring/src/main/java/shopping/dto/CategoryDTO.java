package shopping.dto;

public class CategoryDTO {
	private int cate_key;
	private String cate_name;
	private ProductDTO productDTO;
	
	public CategoryDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getCate_key() {
		return cate_key;
	}

	public void setCate_key(int cate_key) {
		this.cate_key = cate_key;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}

	public ProductDTO getProductDTO() {
		return productDTO;
	}

	public void setProductDTO(ProductDTO productDTO) {
		this.productDTO = productDTO;
	}
	
	

}
