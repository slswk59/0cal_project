package shopping.service;

import java.util.List;

import shopping.dao.WishDAO;
import shopping.dto.WishDTO;

public class WishServiceImp implements WishService {
	private WishDAO wishDao;

	public WishServiceImp() {
		
	}

	public void setWishDao(WishDAO wishDao) {
	    this.wishDao = wishDao;
	}

	@Override
	public List<WishDTO> selectWishListByIdProcess(String id) {
	    return wishDao.selectWishListById(id);
	}

	@Override
	public int deleteWishProcess(int wishKey) {
	    return wishDao.deleteWish(wishKey);
	}

	@Override
	public int addCartFromWishProcess(int wishKey, String id) {
	    return wishDao.addCartFromWish(wishKey, id);
	}

}