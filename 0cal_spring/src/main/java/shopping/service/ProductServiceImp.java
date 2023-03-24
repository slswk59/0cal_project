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

	@Override
	public List<ProductDTO> ctgProductListProcess(PageDTO pv) {
		// TODO Auto-generated method stub
		return productDao.ctgProductList(pv);
	}

	@Override
	public int ctgProductCountProcess(String category) {
		return productDao.ctgProductCount(category);
	}
	

	@Override
	public List<ProductDTO> searchProcess(PageDTO pv) {
		return productDao.searchList(pv);
	}

	@Override
	public List<ProductDTO> bestListProcess() {
		return productDao.bestList();
	}

	@Override
	public List<ProductDTO> chuchunListProcess() {
		return productDao.chuchunList();
	}

	@Override
	public List<ProductDTO> g10afListProcess() {
		return productDao.g10afList();
	}

	@Override
	public List<ProductDTO> g20afListProcess() {
		return productDao.g20afList();
	}

	@Override
	public List<ProductDTO> g30afListProcess() {
		return productDao.g30afList();
	}

	@Override
	public List<ProductDTO> g10amListProcess() {
		return productDao.g10amList();
	}

	@Override
	public List<ProductDTO> g20amListProcess() {
		return productDao.g20amList();
	}

	@Override
	public List<ProductDTO> g30amListProcess() {
		return productDao.g30amList();
	}
	
}
