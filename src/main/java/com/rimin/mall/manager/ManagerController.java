package com.rimin.mall.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {
	
	@GetMapping("/manager/join")
	public String managerJoin() {
		return "manager/managerJoin";
	}
	
	
	@GetMapping("/manager/add-product")
	public String AddProduct() {
		return "manager/addProduct";
	}
	
}
