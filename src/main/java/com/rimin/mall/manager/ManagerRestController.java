package com.rimin.mall.manager;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.manager.service.ManagerService;

@RestController
public class ManagerRestController {
	
	@Autowired
	private ManagerService managerService;
	
	
	// 사용자 장바구니에 있는 제품들 상태 배송중 / 배송완료 로 바꿔주기
	@PutMapping("/change/status/onDeliver")
	public Map<String, String> updateStatusOndeliver(@RequestParam("id") int id){
		Basket basket = managerService.updateStatusOnDeliver(id);
		
		Map<String, String> resultMap = new HashMap<>();
		if(basket != null) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result","fail");
		}
		return resultMap;
		
		
		
	}
	@PutMapping("/change/status/delivered")
	public Map<String, String> updateStatusDelivered(@RequestParam("id") int id){
		Basket basket = managerService.updateStatusDelivered(id);
		
		Map<String, String> resultMap = new HashMap<>();
		if(basket != null) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result","fail");
		}
		return resultMap;
	}
	
	
	
	
	
	
}
