package com.rimin.mall.basket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rimin.mall.basket.dto.BasketDetail;
import com.rimin.mall.basket.service.BasketService;

import jakarta.servlet.http.HttpSession;
@Controller
public class BasketController {

	@Autowired
	private BasketService basketService;
	
	@GetMapping("/user/basket")
	public String basketView() {
		return "user/userCart";
	}
	
	// 장바구니 목록 보여주기
		@GetMapping("/basket/list-view")
		public String basketList(HttpSession session
								, Model model) {
			// 로그인한 사용자 PK 받아서 장바구니 조회
			int userId = (Integer)session.getAttribute("userId");
			
			List<BasketDetail> basketList = basketService.getBasketList(userId);
			
			model.addAttribute("basketList", basketList);
			
			return "/user/userCart";
			
		}
}
