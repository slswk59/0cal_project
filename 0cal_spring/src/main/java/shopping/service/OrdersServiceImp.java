package shopping.service;

import java.util.List;

import shopping.dao.OrdersDAO;
import shopping.dto.Or_detailDTO;
import shopping.dto.OrdersDTO;

public class OrdersServiceImp implements OrdersService{
	private OrdersDAO ordersDao;
	
	public OrdersServiceImp() {
		// TODO Auto-generated constructor stub
	}
	public void setOrdersDao(OrdersDAO ordersDao) {
		this.ordersDao = ordersDao;
	}
	

	@Override
	public List<OrdersDTO> ordersProcess(String id) {
		// TODO Auto-generated method stub
		return ordersDao.orderslist(id);
	}
	@Override
	public List<OrdersDTO> ordersDetailProcess(String or_key) {
		// TODO Auto-generated method stub
		return ordersDao.ordersDetailList(or_key);
	}
	@Override
	public void addOrdersProcess(OrdersDTO dto) {
		ordersDao.insertOrders(dto);
		
	}
	@Override
	public void addOrderDetailProcess(Or_detailDTO dto) {
		ordersDao.insertOrderDetail(dto);
	}
	@Override
	public void deleteAllCartProcess(String id) {
		ordersDao.deleteAllCart(id);
		
	}
}
