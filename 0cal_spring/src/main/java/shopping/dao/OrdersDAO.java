package shopping.dao;

import java.util.List;

import shopping.dto.OrdersDTO;

public interface OrdersDAO {
	public List<OrdersDTO> orderslist(String id);
	public List<OrdersDTO> ordersDetailList(int or_key);
}
