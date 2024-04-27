package com.rimin.mall.basket;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.basket.service.BasketService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
public class BasketRestController {
	
	@Autowired
	private BasketService basketService;
	
	//사용자 장바구니에 담는 기능
	@PostMapping("/user/add-basket")
	public Map<String, String> addBasket(@RequestParam("clothId") int clothId
									, @RequestParam("clothSize") String clothSize
									, @RequestParam("clothCount") int clothCount
									, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		// userId는 세션에 저장되어있으므로 파라미터로 전달받지 않고 세션에 저장된 값 불러오기
		int userId = (Integer)session.getAttribute("userId");
		
		Basket basket = basketService.addCart(userId, clothId, clothSize, clothCount);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(basket != null) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
}
