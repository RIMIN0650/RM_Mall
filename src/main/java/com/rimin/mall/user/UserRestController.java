package com.rimin.mall.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rimin.mall.user.domain.User;
import com.rimin.mall.user.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
public class UserRestController {

	@Autowired
	private UserService userService;
	
	
	//회원 가입
	@PostMapping("/user/join")
	public Map<String, String> join(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("name") String name
			, @RequestParam("email") String email
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("address") String address) {
		
		User user = userService.addUser(loginId, password, name, email, phoneNumber, address);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(user != null) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	
	// id 중복 확인하기
	@GetMapping("/user/duplicate-id")
	public Map<String, Boolean> isDuplicateId(@RequestParam("loginId") String loginId){
		
		boolean isDuplicateId = userService.isDuplicateId(loginId);
		
		Map<String,Boolean> resultMap = new HashMap<>();
		
		resultMap.put("isDuplicateId",  isDuplicateId);
		
		return resultMap;
	}
	
	
	// 로그인 기능
	@PostMapping("/user/login")
	public Map<String, String> login(
							@RequestParam("loginId") String loginId
							, @RequestParam("loginPw") String loginPw
							, HttpServletRequest request){
		
		User user = userService.getUser(loginId, loginPw);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(user != null) {
			HttpSession session = request.getSession();
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("userName", user.getName());
			
			resultMap.put("result",  "success");
		} else {
			resultMap.put("result", "fail");
		}
		return resultMap;
		
	}

	
	// 사용자 장바구니에 담는 기능
//	@PostMapping("/user/add-basket")
//	public Map<String, String> addBasket(@RequestParam("clothId") int clothId
//									, @RequestParam("productSize") String productSize
//									, @RequestParam("productCount") int productCount
//									, HttpServletRequest request){
//		
//		HttpSession session = request.getSession();
//		// userId는 세션에 저장되어있으므로 파라미터로 전달받지 않고 세션에 저장된 값 불러오기
//		int userId = (Integer)session.getAttribute("userId");
//		
//		
//		
//	}
	
	
}
