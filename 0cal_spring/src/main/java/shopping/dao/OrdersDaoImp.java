package shopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import shopping.dto.Or_detailDTO;
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
		return sqlSession.selectList("cart.orderlist", id);
	}

	@Override
	public List<OrdersDTO> ordersDetailList(String or_key) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("cart.orderDetailList", or_key);
	}

	@Override
	public void insertOrders(OrdersDTO dto) {
		sqlSession.insert("cart.insertOrders", dto);
		
	}

	@Override
	public void insertOrderDetail(Or_detailDTO dto) {
		sqlSession.insert("cart.insertOrderDetail", dto);
		
	}

	@Override
	public void deleteAllCart(String id) {
		sqlSession.delete("cart.deleteAllCart", id);
		
	}
	

}
