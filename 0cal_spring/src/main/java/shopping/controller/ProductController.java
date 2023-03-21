package shopping.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import shopping.dto.PageDTO;
import shopping.dto.ProductDTO;
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
	public ModelAndView oneListExecute(String pr_key, ModelAndView mav) {
		mav.addObject("dto", productService.selectOneProcess(Integer.parseInt(pr_key)));
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
	
	//카테고리페이지 로딩
	@RequestMapping("/shopping/ctgProductList.do")
	public ModelAndView ctgProductListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav, @RequestParam String category) {
		System.out.println(pv);
		int totalRecord = productService.ctgProductCountProcess(category); // product의 전체 카운트를 가지고 온다.
		//mav.addObject("count", totalRecord);
		if(totalRecord >=1) {
			if(pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord, pv.getCategory());
			
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.ctgProductListProcess(this.pdto));
		}
		
			String viewName = "shopping/ctgProductList?categorList=" + category;
			System.out.println(viewName);
			
			mav.addObject("ctgProductList", category);	
			mav.setViewName("shopping/ctgProductList");
			return mav;
		}
	
	//드라마 추천 
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public String index(@ModelAttribute("pv") PageDTO pv, Model model) {
		pv.setStartRow(0);
		pv.setEndRow(12);
		List<ProductDTO> listDrama =  productService.dThemeListProcess(pv);
		List<ProductDTO> listOrganic =  productService.oThemeListProcess(pv);	
		List<ProductDTO> saleList =  productService.salesListProcess(pv);
		model.addAttribute("dramaList" , listDrama);
		model.addAttribute("organicList" , listOrganic);
		model.addAttribute("saleL" , saleList);
		
		return "index";
	}
	
	//검색
	@RequestMapping(value="/search.do", method=RequestMethod.GET)
	public String search(@ModelAttribute("pv") PageDTO pv, Model model) {
		try {
			List<ProductDTO> list =  productService.searchProcess(pv);
			System.out.println(list);
			model.addAttribute("searchList" , list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "search";
	}
	
//	  추천페이지-드라마 로딩 // 
//	   @RequestMapping("/shopping/dThemeList.do") public ModelAndView 
//	  dThemeListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) { int totalRecord = productService.countProcess(); 
//	  mav.addObject("pv", this.pdto);
//	  mav.addObject("aList", productService.dThemeListProcess(this.pdto)); } 
//	  mav.setViewName("shopping/dThemeList"); 
//	  return mav; 
//	  }

	
	
//		//상세페이지 로딩
//		@RequestMapping("/shopping/goods.do")
//		public ModelAndView cateListExecute(int cate_key, ModelAndView mav) {
//			mav.addObject("dto", productService.selectOneProcess(cate_key));
//			mav.setViewName("shopping/goods");
//		return mav;
//		}

	

	
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
