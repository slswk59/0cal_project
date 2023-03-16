package shopping.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import shopping.dto.PageDTO;
import shopping.service.ProductService;

public class ProductController {

	private ProductService productService;
	private PageDTO pdto;
	
	public ProductController() {
		// TODO Auto-generated constructor stub
	}
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}
	
	
	@RequestMapping("/board/goods.do")
	public ModelAndView oneListExecute(int currentPage, int pr_key, ModelAndView mav) {
		mav.addObject("dto", productService.selectOneProcess(pr_key));
		mav.addObject("currentPage", currentPage);
		mav.setViewName("board/goods");
		return mav;
	}

	@RequestMapping("/board/newList.do")
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
		mav.setViewName("board/newList");
		return mav;
	}


	@RequestMapping("/board/salesList.do")
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
		mav.setViewName("board/salesList");
		return mav;
	}
	
	@RequestMapping("/board/dThemeList.do")
	public ModelAndView dThemeListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = productService.countProcess();
		//mav.addObject("count", totalRecord);
		if(totalRecord >=1) {
			if(pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.dThemeListProcess(this.pdto));
		}
		mav.setViewName("board/dThemeList");
		return mav;
	}
	

	@RequestMapping("/board/oThemeList.do")
	public ModelAndView oThemeListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = productService.countProcess();
		//mav.addObject("count", totalRecord);
		if(totalRecord >=1) {
			if(pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.oThemeListProcess(this.pdto));
		}
		mav.setViewName("board/oThemeList");
		return mav;
	}
}
