package shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import shopping.dto.PageDTO;
import shopping.dto.ProductDTO;

public class ProductDaoImp implements ProductDAO {

	private SqlSession sqlSession;

	public ProductDaoImp() {

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

	@Override
	public List<ProductDTO> bestList() {
		return sqlSession.selectList("shopping.BestImages");
	}

	@Override
	public List<ProductDTO> chuchunList() {
		return sqlSession.selectList("shopping.chuchunButton");
	}

	@Override
	public List<ProductDTO> g10afList() {
		return sqlSession.selectList("genderage.g10afList");
	}

	@Override
	public List<ProductDTO> g20afList() {
		return sqlSession.selectList("genderage.g20afList");
	}

	@Override
	public List<ProductDTO> g30afList() {
		return sqlSession.selectList("genderage.g30afList");
	}

	@Override
	public List<ProductDTO> g10amList() {
		return sqlSession.selectList("genderage.g10amList");
	}

	@Override
	public List<ProductDTO> g20amList() {
		return sqlSession.selectList("genderage.g20amList");
	}

	@Override
	public List<ProductDTO> g30amList() {
		return sqlSession.selectList("genderage.g30amList");
	}

}
