package shopping.service;

import java.util.List;

import shopping.dto.OrdersDTO;

public interface OrdersService {
	public List<OrdersDTO> ordersProcess(String id);
}
