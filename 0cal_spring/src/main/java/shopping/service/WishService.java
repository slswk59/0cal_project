package shopping.service;

import java.util.List;

import shopping.dto.WishDTO;

public interface WishService {
    public List<WishDTO> selectWishListByIdProcess(String id);
    public int deleteWishProcess(int wishKey);
    public int addCartFromWishProcess(int wishKey, String id);
}
