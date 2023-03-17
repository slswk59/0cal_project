package shopping.dao;

import java.util.List;

import shopping.dto.OrdersDTO;

public interface OrdersDAO {
	public List<OrdersDTO> orderslist(String id);
}
