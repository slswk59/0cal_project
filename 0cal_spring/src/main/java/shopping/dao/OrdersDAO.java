package shopping.dao;

import java.util.List;

import shopping.dto.Or_detailDTO;
import shopping.dto.OrdersDTO;

public interface OrdersDAO {
	public List<OrdersDTO> orderslist(String id);
	public List<OrdersDTO> ordersDetailList(String or_key);
	public void insertOrders(OrdersDTO dto);
	public void insertOrderDetail(Or_detailDTO dto);
	public void deleteAllCart(String id);
}
