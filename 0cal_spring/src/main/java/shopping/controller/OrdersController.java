package shopping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.dto.AuthInfo;
import member.dto.MemberDTO;
import shopping.service.OrdersService;

//http://localhost:8090/myapp/index.do


@Controller
public class OrdersController {
	private OrdersService ordersService;
	
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
	public ModelAndView oneListExecute(int or_key, ModelAndView mav) {
		System.out.println("or_key:" + or_key);
		mav.addObject("aList", ordersService.ordersDetailProcess(or_key));
		mav.setViewName("shopping/or_detail");
		return mav;
	}
	
	

}
