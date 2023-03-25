package shopping.service;

import java.util.List;

import shopping.dto.AddressDTO;
import shopping.dto.CartDTO;

public interface CartService {
	public void insertCartProcess(CartDTO dto);
	public int countCartProcess(String id, int pr_key);
	public void updateCartProcess(CartDTO dto);
	public void modifyCartProcess(CartDTO dto);
	public List<CartDTO> listCartProcess(String id);
	public void deleteCartProcess(int cart_key);
	public List<AddressDTO> deliListCartProcess(String id);

}