package shopping.dao;

import java.util.List;

import shopping.dto.PageDTO;
import shopping.dto.ProductDTO;


public interface ProductDAO {
	public int count();
	public ProductDTO selectOne(int pr_key);
	public List<ProductDTO> newList(PageDTO pv);
	public List<ProductDTO> salesList(PageDTO pv);
	public List<ProductDTO> dThemeList(PageDTO pv);
	public List<ProductDTO> oThemeList(PageDTO pv);

}
