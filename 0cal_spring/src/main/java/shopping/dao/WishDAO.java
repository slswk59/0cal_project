package shopping.dao;

import java.util.List;

import shopping.dto.WishDTO;

public interface WishDAO {
    public List<WishDTO> selectWishListById(String id);
    public int deleteWish(int wishKey);
    public int addCartFromWish(int wishKey, String id);
}