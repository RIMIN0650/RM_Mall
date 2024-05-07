package com.rimin.mall.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rimin.mall.manager.dto.Order;
import com.rimin.mall.manager.service.ManagerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	
	// 매니저 회원가입
	@GetMapping("/admin/join")
	public String managerJoin() {
		return "manager/managerJoin";
	}
	
	@GetMapping("/admin/login")
	public String managerLogin() {
		return "manager/managerLogin";
	}
	
	// user 로그아웃
	@GetMapping("/admin/logout")
	public String logout(HttpServletRequest request) {
		// 세션에 저장된 사용자 정보 제거
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("managerId");
		session.removeAttribute("managerName");
		
		return "redirect:/main/home";
	}
	
	// 매니저가 상품 추가
	@GetMapping("/admin/add-product")
	public String addProduct() {
		return "manager/addProduct";
	}
	
	// 전체 주문 목록 보여주기
	@GetMapping("/admin/show/orderList")
	public String showOrderList(Model model){
	
		List<Order> orderList = managerService.getOrderList();
		
		model.addAttribute("orderList", orderList);
		
		return "manager/orderList";

	}

}
