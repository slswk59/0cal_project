package shopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import shopping.dto.OrdersDTO;

public class OrdersDaoImp implements OrdersDAO {
	private SqlSessionTemplate sqlSession;
	
	public OrdersDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}


	@Override
	public List<OrdersDTO> orderslist(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("shopping.orderlist", id);
	}

	@Override
	public List<OrdersDTO> ordersDetailList(int or_key) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("shopping.orderDetailList", or_key);
	}
	

}
