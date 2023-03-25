package shopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.dto.AuthInfo;
import member.dto.MemberDTO;
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
	
	
		//장바구니 내역 로딩
		@RequestMapping("/shopping/cart.do")
		public ModelAndView ordersExecute(HttpSession session, ModelAndView mav) {
			AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
			System.out.println(authInfo.getId());
			mav.addObject("bList", cartService.deliListCartProcess(authInfo.getId()));
			mav.addObject("aList", cartService.listCartProcess(authInfo.getId()));
			mav.setViewName("shopping/cart");
			return mav;
		}
	
		//장바구니 삭제 처리
		@RequestMapping(value="/shopping/delete.do", method=RequestMethod.POST)
		public String deleteMember(@ModelAttribute final CartDTO dto, HttpSession session) {
			AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
			System.out.println(dto.getCart_key());
			cartService.deleteCartProcess(dto.getCart_key());
			System.out.println(authInfo.getId());
			return "redirect:/shopping/cart.do";
		}
		
		//로그아웃상태에서 카드 접근시 로그인 창으로 리다이렉트 
		@GetMapping("/shopping/cart.do")
		public ModelAndView cartback(HttpServletRequest request) {
		    HttpSession session = request.getSession();
		    AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
		    ModelAndView mav = new ModelAndView();
		    if(authInfo == null || authInfo.getId() == null) {
		        mav.setViewName("redirect:/member/login.do");
		    } else {
		        mav.addObject("bList", cartService.deliListCartProcess(authInfo.getId()));
		        mav.addObject("aList", cartService.listCartProcess(authInfo.getId()));
		        mav.setViewName("shopping/cart");
		    }
		    return mav;
		}


		

}
