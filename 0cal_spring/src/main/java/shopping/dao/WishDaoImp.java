package shopping.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;

import shopping.dto.WishDTO;

public class WishDaoImp implements WishDAO {

    private SqlSession sqlSession;

    public void setSqlSession(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public void insertWish(WishDTO wishdto) {
    	
    	sqlSession.insert("shopping.insertWish", wishdto);
    }

    @Override
    public List<WishDTO> selectWishList(String id) {
    	
    	return sqlSession.selectList("shopping.selectWishList", id);
    }

    @Override
    public void insertCartByWishKey(WishDTO wishdto) {
    	
    	sqlSession.insert("shopping.insertCartByWishKey", wishdto);
    }

    @Override
    public void deleteWishByWishKey(int wish_key) {
    	
    	sqlSession.delete("shopping.deleteWishByWishKey", wish_key);
    }

}
