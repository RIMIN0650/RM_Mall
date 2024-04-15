package com.rimin.mall.cloth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ClothController {

	@GetMapping("/main/productDetail")
	public String clothDetail() {
		return "main/productDetail";
	}
	
}
