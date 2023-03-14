package com.mycompany.myapp;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// http://localhost:8090/myapp/home.do
@Controller
public class HomeController {
	
		@RequestMapping(value = "/home.do", method = RequestMethod.GET)
		public String home() {
			
			return "home";
		}
	
}
