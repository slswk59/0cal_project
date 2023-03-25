package shopping.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import shopping.dto.AddressDTO;
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
		sqlSession.insert("cart.insertCart", dto);
	}


	@Override
	public int countCart(String id, int pr_key) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pr_key", pr_key);
		return sqlSession.selectOne("cart.countCart", map);
	}


	@Override
	public void updateCart(CartDTO dto) {
		sqlSession.update("cart.updateCart", dto);
		
	}


	@Override
	public List<CartDTO> listCart(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("cart.cartlist", id);
	}


	@Override
	public void deleteCart(int cart_key) {
		sqlSession.delete("cart.deleteCart", cart_key);
		
	}


	@Override
	public void modifyCart(CartDTO dto) {
		sqlSession.update("cart.modifyCart", dto);
		
	}


	@Override
	public List<AddressDTO> deliListCart(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("cart.cartDeliList", id);
	}
}
