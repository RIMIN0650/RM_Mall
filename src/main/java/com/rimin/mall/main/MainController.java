package com.rimin.mall.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class MainController {
	
	@GetMapping("/main/home")
	public String mainHome() {
		return "main/mainPage";
	}

	
}
