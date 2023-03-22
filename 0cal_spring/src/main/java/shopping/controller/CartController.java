package shopping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dto.AuthInfo;
import shopping.dto.CartDTO;
import shopping.service.CartService;

@Controller
public class CartController {
	private CartService cartService;
	
	public CartController() {
		// TODO Auto-generated constructor stub
	}
	
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	
	//장바구니 추가
		@RequestMapping(value="/shopping/insertCart.do", method=RequestMethod.POST, produces="application/json;charset=utf-8")
		public String insesrtCartExecute(HttpSession session, @RequestBody final CartDTO dto) {
			// Client(JSON) -> Server @ReuqestBody(JSON) contentType: application/json; 
			// Client(Form) -> Server @ModelAttribute(Form) contentType: application:x-www-form-urlencoded;
			System.out.println("cartDTO.price = " + dto.getCart_price());
			
			AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
			if(authInfo.getId() == null) {
				return "redirect:/member/login.do";
			}
			dto.setId(authInfo.getId());

			System.out.println("id: " + dto.getId());
			System.out.println("pr_key: "+ dto.getPr_key());
			System.out.println("cart_price: " + dto.getCart_price());
			System.out.println("cart_count: " +dto.getCart_count());
			
			int count = cartService.countCartProcess(dto.getId(), dto.getPr_key());
			System.out.println("count: " +count);
			if (count == 0){
				cartService.insertCartProcess(dto);
			} else {
				cartService.updateCartProcess(dto); 
			}
			return "redirect:/index.do";
		}
	
	
	
	
	
	
	

}
