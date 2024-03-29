package com.rimin.mall.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	// user 회원가입
	@GetMapping("/user/join")
	public String join() {
		return "user/userJoin";
	}
	
	// user 로그인
	@GetMapping("/user/login")
	public String logIn() {
		return "user/userLogin";
	}
	
	
}
