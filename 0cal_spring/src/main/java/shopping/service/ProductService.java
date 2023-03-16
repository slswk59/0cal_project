package shopping.service;

import java.util.List;

import shopping.dto.PageDTO;
import shopping.dto.ProductDTO;



public interface ProductService {
	public int countProcess(); 
	public ProductDTO selectOneProcess(int pr_key);
	public List<ProductDTO> newListProcess(PageDTO pv);
	public List<ProductDTO> salesListProcess(PageDTO pv);
	public List<ProductDTO> dThemeListProcess(PageDTO pv);
	public List<ProductDTO> oThemeListProcess(PageDTO pv);

}
