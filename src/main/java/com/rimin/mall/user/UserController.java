package com.rimin.mall.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	
	@GetMapping("/user/join")
	public String logIn() {
		return "user/userJoin";
	}
	
	
	
	
}
