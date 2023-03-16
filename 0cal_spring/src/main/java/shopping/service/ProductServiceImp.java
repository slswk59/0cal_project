package shopping.service;

import java.util.List;

import shopping.dao.ProductDAO;
import shopping.dto.PageDTO;
import shopping.dto.ProductDTO;

public class ProductServiceImp implements ProductService {
	private ProductDAO productDao;
	
	public ProductServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}

	@Override
	public int countProcess() {
		return productDao.count();
	}

	@Override
	public ProductDTO selectOneProcess(int pr_key) {
		return productDao.selectOne(pr_key);
	}

	@Override
	public List<ProductDTO> newListProcess(PageDTO pv) {
		return productDao.newList(pv);
	}

	@Override
	public List<ProductDTO> salesListProcess(PageDTO pv) {
		return productDao.salesList(pv);
	}

	@Override
	public List<ProductDTO> dThemeListProcess(PageDTO pv) {
		return productDao.dThemeList(pv);
	}

	@Override
	public List<ProductDTO> oThemeListProcess(PageDTO pv) {
		return productDao.oThemeList(pv);
	}

}
