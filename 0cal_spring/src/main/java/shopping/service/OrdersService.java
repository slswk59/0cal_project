package shopping.service;

import java.util.List;

import shopping.dto.Or_detailDTO;
import shopping.dto.OrdersDTO;

public interface OrdersService {
	public List<OrdersDTO> ordersProcess(String id);
	public List<OrdersDTO> ordersDetailProcess(String or_key);
	public void addOrdersProcess(OrdersDTO dto);
	public void addOrderDetailProcess(Or_detailDTO dto);
	public void deleteAllCartProcess(String id);
}
