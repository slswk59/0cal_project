package shopping.controller;

import java.text.DecimalFormat;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.dto.AuthInfo;
import member.dto.MemberDTO;
import shopping.dto.CartDTO;
import shopping.dto.Or_detailDTO;
import shopping.dto.Or_detailListDTO;
import shopping.dto.OrdersDTO;
import shopping.service.CartService;
import shopping.service.OrdersService;

//http://localhost:8090/myapp/index.do


@Controller
public class OrdersController {
	private OrdersService ordersService;
	private CartService cartService;
	
	public OrdersController() {
		// TODO Auto-generated constructor stub
	}
	
	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

		
	//주문내역 로딩
	@RequestMapping("/shopping/orders.do")
	public ModelAndView ordersExecute(HttpSession session, ModelAndView mav) {
		AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
		System.out.println(authInfo.getId());
		mav.addObject("aList", ordersService.ordersProcess(authInfo.getId()));
		mav.setViewName("shopping/orders");
		return mav;
	}
	
	//주문상세페이지 로딩
	@RequestMapping("/shopping/or_detail.do")
	public ModelAndView oneListExecute(String or_key, ModelAndView mav) {
		System.out.println("or_key:" + or_key);
		mav.addObject("aList", ordersService.ordersDetailProcess(or_key));
		mav.setViewName("shopping/or_detail");
		return mav;
	}
	
	//주문하기
	@RequestMapping(value="/shopping/insertOrder.do", method=RequestMethod.POST)
	public String insesrtCartExecute(HttpSession session, @ModelAttribute OrdersDTO dto,@ModelAttribute Or_detailListDTO oDTO) {
		AuthInfo authInfo =(AuthInfo)session.getAttribute("authInfo");
		if(authInfo.getId() == null) {
			return "redirect:/member/login.do";
		}
		dto.setId(authInfo.getId());
		
		//주문번호 체번
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		String ymd = ym + new DecimalFormat("00").format(cal.get(Calendar.DATE));
		String subNum = "";
		
		for(int i=1; i <=6; i++) {
			subNum += (int)(Math.random()*10);
		}
		String or_key = ymd+ "_" + subNum;
		
		dto.setOr_key(or_key);
		
		
		ordersService.addOrdersProcess(dto);
		System.out.println("or_key:" + or_key);
		System.out.println("del_key:" + dto.getDel_key());
		//장바구니 상품리스트등록
		for(Or_detailDTO oit : oDTO.getOrders()) {	
			oit.setOr_key(or_key);
			System.out.println("pr_key:" + oit.getPr_key());
			System.out.println("or_pr_count:" + oit.getOr_pr_count());
			System.out.println("or_pr_price:" + oit.getOr_pr_price());
			ordersService.addOrderDetailProcess(oit);	
		}
		
		ordersService.deleteAllCartProcess(authInfo.getId());

		return "redirect:/shopping/orders.do";
	}


}
