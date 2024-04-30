package com.rimin.mall.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rimin.mall.manager.dto.Order;
import com.rimin.mall.manager.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;
	
	
	// 매니저 회원가입
	@GetMapping("/manager/join")
	public String managerJoin() {
		return "manager/managerJoin";
	}
	
	// 매니저가 상품 추가
	@GetMapping("/manager/add-product")
	public String AddProduct() {
		return "manager/addProduct";
	}
	
	// 전체 주문 목록 보여주기
	@GetMapping("/manager/show/orderList")
	public String showOrderList(Model model){
	
		List<Order> orderList = managerService.getOrderList();
		
		model.addAttribute("orderList", orderList);
		
		return "manager/orderList";

	
	}
	
	
	
	
	
	
	
	
}
