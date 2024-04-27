package com.rimin.mall.basket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class BasketController {
	@GetMapping("/user/basket")
	public String basketView() {
		return "user/userCart";
	}
}
