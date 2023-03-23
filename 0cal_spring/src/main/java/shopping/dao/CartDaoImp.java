package shopping.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import shopping.dto.CartDTO;

public class CartDaoImp implements CartDAO{

	private SqlSessionTemplate sqlSession;
	
	public CartDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void insertCart(CartDTO dto) {
		sqlSession.insert("shopping.insertCart", dto);
	}


	@Override
	public int countCart(String id, int pr_key) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pr_key", pr_key);
		return sqlSession.selectOne("shopping.countCart", map);
	}


	@Override
	public void updateCart(CartDTO dto) {
		sqlSession.update("shopping.updateCart", dto);
		
	}


	@Override
	public List<CartDTO> listCart(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("shopping.cartlist", id);
	}


	@Override
	public void deleteCart(int cart_key) {
		sqlSession.delete("shopping.deleteCart", cart_key);
		
	}


	@Override
	public void modifyCart(CartDTO dto) {
		sqlSession.update("shopping.modifyCart", dto);
		
	}
}
