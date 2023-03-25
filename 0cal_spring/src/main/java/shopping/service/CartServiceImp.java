package shopping.service;

import java.util.List;

import shopping.dao.CartDAO;
import shopping.dto.AddressDTO;
import shopping.dto.CartDTO;

public class CartServiceImp implements CartService{

	private CartDAO cartDto;
	
	public CartServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setCartDto(CartDAO cartDto) {
		this.cartDto = cartDto;
	}

	@Override
	public void insertCartProcess(CartDTO dto) {
		// TODO Auto-generated method stub
		cartDto.insertCart(dto);
	}

	@Override
	public int countCartProcess(String id, int pr_key) {
		// TODO Auto-generated method stub
		return cartDto.countCart(id, pr_key);
	}

	@Override
	public void updateCartProcess(CartDTO dto) {
		cartDto.updateCart(dto);
	}

	@Override
	public List<CartDTO> listCartProcess(String id) {
		// TODO Auto-generated method stub
		return cartDto.listCart(id);
	}

	@Override
	public void deleteCartProcess(int cart_key) {
		// TODO Auto-generated method stub
		cartDto.deleteCart(cart_key);
	}

	@Override
	public void modifyCartProcess(CartDTO dto) {
		cartDto.modifyCart(dto);
		
	}

	@Override
	public List<AddressDTO> deliListCartProcess(String id) {
		// TODO Auto-generated method stub
		return cartDto.deliListCart(id);
	}
	
	
}
