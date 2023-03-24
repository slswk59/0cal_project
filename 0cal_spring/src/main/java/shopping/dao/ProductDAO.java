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
	public List<ProductDTO> ctgProductList(PageDTO pv);
	public int ctgProductCount(String category);
	public List<ProductDTO> searchList(PageDTO pv);
	public List<ProductDTO> bestList();
	public List<ProductDTO> chuchunList();
	public List<ProductDTO> g10afList();
	public List<ProductDTO> g20afList();
	public List<ProductDTO> g30afList();
	public List<ProductDTO> g10amList();
	public List<ProductDTO> g20amList();
	public List<ProductDTO> g30amList();
}
