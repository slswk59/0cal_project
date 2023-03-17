package shopping.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import shopping.dto.WishDTO;

public class WishDaoImp implements WishDAO {
	private SqlSession sqlSession;

	public WishDaoImp(SqlSession sqlSession) {
	    this.sqlSession = sqlSession;
	}

	@Override
	public List<WishDTO> selectWishListById(String id) {
	    return sqlSession.selectList("wish.selectWishListById", id);
	}

	@Override
	public int deleteWish(int wishKey) {
	    return sqlSession.update("wish.deleteWish", wishKey);
	}

	@Override
	public int addCartFromWish(int wishKey, String id) {
	    // map으로 parameter 전달
	    // "wishKey"라는 key에 wishKey 변수의 값을 저장하고,
	    // "id"라는 key에 id 변수의 값을 저장한다.
	    // 이렇게 전달한 map의 key값을 mapper에서 참조할 수 있다.
	    return sqlSession.insert("wish.addCartFromWish", 
	                             new HashMap<String, Object>() {{
	                                 put("wishKey", wishKey);
	                                 put("id", id);
	                             }});
	}
}