package shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import shopping.dto.PageDTO;
import shopping.dto.ProductDTO;

public class ProductDaoImp implements ProductDAO{

	private SqlSession sqlSession;
	
	public ProductDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public int count() {
		return sqlSession.selectOne("shopping.productCount");
	}

	@Override
	public ProductDTO selectOne(int pr_key) {
		return sqlSession.selectOne("shopping.selectOneProduct", pr_key);
	}

	@Override
	public List<ProductDTO> newList(PageDTO pv) {
		return sqlSession.selectList("shopping.productNewList", pv);
	}

	@Override
	public List<ProductDTO> salesList(PageDTO pv) {
		return sqlSession.selectList("shopping.productSaleList", pv);
	}

	@Override
	public List<ProductDTO> dThemeList(PageDTO pv) {
		return sqlSession.selectList("shopping.productthemeList_drama", pv);
	}

	@Override
	public List<ProductDTO> oThemeList(PageDTO pv) {
		return sqlSession.selectList("shopping.productthemeList_organic", pv);
	}

	@Override
	public List<ProductDTO> ctgProductList(PageDTO pv) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("shopping.ctgProductList", pv);
	}

	@Override
	public int ctgProductCount(String category) {
		return sqlSession.selectOne("shopping.ctgProductCount", category);
	}
	
	@Override
	public List<ProductDTO> searchList(PageDTO pv) {
		return sqlSession.selectList("shopping.searchList", pv);
	}

	


	


	
}
