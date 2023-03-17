package shopping.controller;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import shopping.dto.CartDTO;
import shopping.dto.ProductDTO;
import shopping.dto.WishDTO;
import shopping.service.ProductService;
import shopping.service.WishService;

//http://localhost:8090/myapp/wish.do

@Controller
public class WishController {
    
    @Autowired
    private ProductService productService;
    
    @Autowired
    private WishService wishService;
    
    // 찜 목록 조회
    @GetMapping("/wish")
    public ModelAndView showWishList(Authentication auth) {
        ModelAndView mav = new ModelAndView("wish");
        String id = auth.getName();
        List<WishDTO> wishList = wishService.getWishListById(id);
        mav.addObject("wishList", wishList);
        return mav;
    }
    
    // 찜 목록에서 상품 삭제
    @DeleteMapping("/wish/{wishKey}")
    @ResponseBody
    public void deleteWish(@PathVariable int wishKey) {
        wishService.deleteWishProcess(wishKey);
    }
    
    // 찜 목록에서 상품 장바구니로 이동
    @PostMapping("/wish/addCart")
    @ResponseBody
    public void addCartFromWish(@RequestBody Map<String, Object> data) {
        int wishKey = Integer.parseInt(data.get("wishKey").toString());
        String id = (String) data.get("id");
        WishDTO wish = wishService.getWishById(wishKey);
        ProductDTO product = productService.getProductById(wish.getPr_key());
        CartDTO cart = new CartDTO(0, LocalDateTime.now(), product.getPr_key(), id, product.getPr_price());
        productService.addCart(cart);
        wishService.deleteWishProcess(wishKey);
    }
}

