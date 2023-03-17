package shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import shopping.dto.PageDTO;
import shopping.service.ProductService;


//http://localhost:8090/myapp/index.do

@Controller
public class ProductController {

	private ProductService productService;
	private PageDTO pdto;
	
	public ProductController() {
		// TODO Auto-generated constructor stub
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	//상품상세페이지 로딩
	@RequestMapping("/shopping/goods.do")
	public ModelAndView oneListExecute(int pr_key, ModelAndView mav) {
		System.out.println("pr_key:" + pr_key);
		mav.addObject("dto", productService.selectOneProcess(pr_key));
		mav.setViewName("shopping/goods");
		return mav;
	}

		
	//신상품페이지 로딩
	@RequestMapping("/shopping/newList.do")
	public ModelAndView newListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = productService.countProcess();
		//mav.addObject("count", totalRecord);
		if(totalRecord >=1) {
			if(pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.newListProcess(this.pdto));
		}
		mav.setViewName("shopping/newList");
//		System.out.printf("currentPage: %d, totalRecord: %d", pv.getCurrentPage(), totalRecord);
		return mav;
	}

	//특가페이지 로딩
	@RequestMapping("/shopping/salesList.do")
	public ModelAndView salesListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = productService.countProcess();
		//mav.addObject("count", totalRecord);
		if(totalRecord >=1) {
			if(pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.salesListProcess(this.pdto));
		}
		mav.setViewName("shopping/salesList");
		return mav;
	}
	
//	//추천페이지-드라마 로딩
//	@RequestMapping("/shopping/dThemeList.do")
//	public ModelAndView dThemeListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
//		int totalRecord = productService.countProcess();
//		//mav.addObject("count", totalRecord);
//		if(totalRecord >=1) {
//			if(pv.getCurrentPage() == 0)
//				pv.setCurrentPage(1);
//			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
//			mav.addObject("pv", this.pdto);
//			mav.addObject("aList", productService.dThemeListProcess(this.pdto));
//		}
//		mav.setViewName("shopping/dThemeList");
//		return mav;
//	}
	
	//추천페이지-올가닉 로딩
//	@RequestMapping("/shopping/oThemeList.do")
//	public ModelAndView oThemeListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
//		int totalRecord = productService.countProcess();
//		//mav.addObject("count", totalRecord);
//		if(totalRecord >=1) {
//			if(pv.getCurrentPage() == 0)
//				pv.setCurrentPage(1);
//			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
//			mav.addObject("pv", this.pdto);
//			mav.addObject("aList", productService.oThemeListProcess(this.pdto));
//		}
//		mav.setViewName("shopping/oThemeList");
//		return mav;
//	}
	
}
