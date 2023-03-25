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

	// 상품상세페이지 로딩
	@RequestMapping("/shopping/goods.do")
	public ModelAndView oneListExecute(String pr_key, ModelAndView mav) {
		mav.addObject("dto", productService.selectOneProcess(Integer.parseInt(pr_key)));
		mav.setViewName("shopping/goods");
		return mav;
	}

	// 신상품페이지 로딩
	@RequestMapping("/shopping/newList.do")
	public ModelAndView newListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = productService.countProcess();
		// mav.addObject("count", totalRecord);
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.newListProcess(this.pdto));
		}
		mav.setViewName("shopping/newList");
//		System.out.printf("currentPage: %d, totalRecord: %d", pv.getCurrentPage(), totalRecord);
		return mav;
	}

	// 특가페이지 로딩
	@RequestMapping("/shopping/salesList.do")
	public ModelAndView salesListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav) {
		int totalRecord = productService.countProcess();
		// mav.addObject("count", totalRecord);
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0)
				pv.setCurrentPage(1);
			this.pdto = new PageDTO(pv.getCurrentPage(), totalRecord);
			mav.addObject("pv", this.pdto);
			mav.addObject("aList", productService.salesListProcess(this.pdto));
		}
		mav.setViewName("shopping/salesList");
		return mav;
	}

	// 카테고리페이지 로딩
	@RequestMapping("/shopping/ctgProductList.do")
	public ModelAndView ctgProductListExecute(@ModelAttribute("pv") PageDTO pv, ModelAndView mav, @RequestParam String category) {
		System.out.println(pv);
		int totalRecord = productService.ctgProductCountProcess(category); // product의 전체 카운트를 가지고 온다.
		// mav.addObject("count", totalRecord);
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0)
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

	// 드라마 추천
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(@ModelAttribute("pv") PageDTO pv, Model model) {
		pv.setStartRow(0);
		pv.setEndRow(12);
		List<ProductDTO> listDrama = productService.dThemeListProcess(pv);
		List<ProductDTO> listOrganic = productService.oThemeListProcess(pv);
		List<ProductDTO> saleList = productService.salesListProcess(pv);
		model.addAttribute("dramaList", listDrama);
		model.addAttribute("organicList", listOrganic);
		model.addAttribute("saleL", saleList);

		return "index";
	}

	// 검색
	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	public String search(@ModelAttribute("pv") PageDTO pv, Model model) {
		try {
			List<ProductDTO> list = productService.searchProcess(pv);
			System.out.println(list);
			model.addAttribute("searchList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "search";
	}

	// 베스트
	@RequestMapping(value = "/shopping/best.do", method = RequestMethod.GET)
	public ModelAndView BestListExecute(ModelAndView mav) {
		List<ProductDTO> bestList = productService.bestListProcess();
		mav.addObject("bestList", bestList);
		mav.setViewName("shopping/best");

		return mav;
	}

	// 추천
	@RequestMapping(value = "/shopping/chuchun.do", method = RequestMethod.GET)
	public ModelAndView chuchunListExecute(ModelAndView mav) { 
		List<ProductDTO> chuchunList = productService.chuchunListProcess();
		mav.addObject("chuchunList", chuchunList);
		mav.setViewName("shopping/chuchun");
		return mav;
	}
	
	//genderage
		@RequestMapping(value = "/shopping/genderage.do", method = RequestMethod.GET)
		public ModelAndView curatingListExecute(ModelAndView mav) {
			List<ProductDTO> g10afList = productService.g10afListProcess();
			List<ProductDTO> g20afList = productService.g20afListProcess();
			List<ProductDTO> g30afList = productService.g30afListProcess();
			List<ProductDTO> g10amList = productService.g10amListProcess();
			List<ProductDTO> g20amList = productService.g20amListProcess();
			List<ProductDTO> g30amList = productService.g30amListProcess();
			mav.addObject("g10afList", g10afList);
			mav.addObject("g20afList", g20afList);
			mav.addObject("g30afList", g30afList);
			mav.addObject("g10amList", g10amList);
			mav.addObject("g20amList", g20amList);
			mav.addObject("g30amList", g30amList);
			mav.setViewName("shopping/genderage");

			return mav;
		}
}
