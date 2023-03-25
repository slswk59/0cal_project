package shopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.dto.AuthInfo;
import member.dto.MemberDTO;
import shopping.dto.AddressDTO;
import shopping.dto.CartDTO;
import shopping.dto.WishDTO;
import shopping.service.CartService;
import shopping.service.WishService;

//http://localhost:8090/myapp/index.do
//http://localhost:8090/myapp/shopping/wish.do


@Controller
public class WishController {
	
	private CartService cartService;
	private WishService wishService;
	
	public WishController() {
		
	}
	
	public void setWishService(WishService wishService) {
		this.wishService = wishService;
	}
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	
	
	// 찜목록 페이지 로딩
	        @RequestMapping("/shopping/wish.do")
			public ModelAndView wishlist(HttpSession session, ModelAndView mav) {
				AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
				System.out.println(authInfo.getId());
			    mav.addObject("aList", wishService.WishListProcess(authInfo.getId()));
				mav.setViewName("shopping/wish");
				return mav;
			}
	
	
	     // 찜 삭제기능
			@RequestMapping(value="/shopping/wish.do", method=RequestMethod.POST)
			public String deleteProductFromWishListProcess(@ModelAttribute final WishDTO dto, HttpSession session) {
			    AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
			    System.out.println(dto.getWish_key());
			    wishService.deleteProductFromWishListProcess(dto.getWish_key());
			    return "redirect:/shopping/wish.do";	
			    }
		
	     // 찜 목록 페이지에서 상품을 장바구니 추가 기능
			@RequestMapping(value="/shopping/insertCartByWish.do", method=RequestMethod.POST, produces="application/json;charset=utf-8")
			public String insertCartByWish(HttpSession session, @RequestBody final WishDTO dto) {
				
				AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
				if(authInfo.getId() == null) {
					return "redirect:/member/login.do";
				}
				dto.setId(authInfo.getId());

				System.out.println("id: " + dto.getId());
				System.out.println("pr_key: "+ dto.getPr_key());
				
				wishService.addProductToCartProcess(dto);
				return "redirect:/shopping/wish.do";
	
			}
			
			
	        // 상품을 찜 목록에 추가하는 메서드
			@RequestMapping(value="/shopping/insertWish.do", method=RequestMethod.POST, produces="application/json;charset=utf-8")
			public String insertWish(HttpSession session, @RequestBody final WishDTO dto) {
				
				AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
				if(authInfo.getId() == null) {
					return "redirect:/member/login.do";
				}
				dto.setId(authInfo.getId());

				System.out.println("id: " + dto.getId());
				System.out.println("pr_key: "+ dto.getPr_key());
				
				wishService.addProductToWishListProcess(dto);
				return "redirect:/index.do";
	
			}
			
			//로그인 안됬을 시 로그인으로 리다이렉트
			@GetMapping("/shopping/wish.do")
			public ModelAndView wish(HttpServletRequest request) {
			    HttpSession session = request.getSession();
			    AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
			    ModelAndView mav = new ModelAndView();
			    if(authInfo == null || authInfo.getId() == null) {
			        mav.setViewName("redirect:/member/login.do");
			    } else {
			        mav.addObject("aList", wishService.WishListProcess(authInfo.getId()));
			        mav.setViewName("shopping/wish");
			    }
			    return mav;
			}

	
			
}
		