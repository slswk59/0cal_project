package shopping.dao;

import java.util.List;

import shopping.dto.AddressDTO;
import shopping.dto.CartDTO;

public interface CartDAO {
	public void insertCart(CartDTO dto);
	public int countCart(String id, int pr_key);
	public void modifyCart(CartDTO dto);
	public void updateCart(CartDTO dto);
	public List<CartDTO> listCart(String id);
	public void deleteCart(int cart_key);
	public List<AddressDTO> deliListCart(String id);
}
