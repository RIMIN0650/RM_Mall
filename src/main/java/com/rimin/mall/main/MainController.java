package com.rimin.mall.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rimin.mall.cloth.dto.ClothDetail;
import com.rimin.mall.cloth.service.ClothService;
@Controller
public class MainController {
	
	@Autowired
	private ClothService clothService;
	
	@GetMapping("/main/home")
	public String mainHome(Model model) {
		
		List<ClothDetail> clothList = clothService.getClothDetail();
		
		model.addAttribute("clothList", clothList);
		
		return "main/mainPage";
	}
	
	


	
	
	
}
