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
    public void addProductToWishListProcess(WishDTO wishdto) {
        wishDao.insertWish(wishdto);
    }

    @Override
    public List<WishDTO> WishListProcess(String id) {
        return wishDao.selectWishList(id);
    }

    @Override
    public void addProductToCartProcess(WishDTO wishdto) {
        wishDao.insertCartByWishKey(wishdto);
    }

    @Override
    public void deleteProductFromWishListProcess(int wish_key) {
        wishDao.deleteWishByWishKey(wish_key);
    }
}
