package com.rimin.mall.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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
	
	// user 로그아웃
	@GetMapping("/user/logout")
	public String logout(HttpServletRequest request) {
		// 세션에 저장된 사용자 정보 제거
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userName");
		
		return "redirect:/main/home";
	}
	
	
	
}
