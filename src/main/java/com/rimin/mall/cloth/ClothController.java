package com.rimin.mall.cloth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rimin.mall.cloth.domain.Cloth;
import com.rimin.mall.cloth.service.ClothService;


@Controller
public class ClothController {

	@Autowired
	private ClothService clothService;
	
	@GetMapping("/main/productDetail")
	public String clothDetail() {
		return "main/productDetail";
	}
	
	
	
	
	@GetMapping("/main/clothes-detail")
	public String clothesDetail(@RequestParam("id") int id
								,Model model) {
		Cloth cloth = clothService.getClothInfo(id);
		
		model.addAttribute("clothInfo",cloth);
		
		return "main/productDetail";
		
	}
	
	
	
	
	
	
	
	
}
