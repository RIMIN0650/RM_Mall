package com.rimin.mall.cloth;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rimin.mall.cloth.domain.Cloth;
import com.rimin.mall.cloth.service.ClothService;

@RestController
public class ClothRestController {
	

	@Autowired
	private ClothService clothService;
	
	@PostMapping("/manager/add-cloth")
	public Map<String, String> addCloth(
			@RequestParam("clothName") String clothName
			, @RequestParam("clothPrice") int clothPrice
			, @RequestParam("clothCategory") String clothCategory
			, @RequestParam("clothImagePath") String clothImagePath
			, @RequestParam("clothInfo") String clothInfo
			){
		
		Cloth cloth = clothService.addNewCloth(clothName, clothPrice, clothCategory, clothImagePath, clothInfo);
		Map<String, String> resultMap = new HashMap<>();
		if(cloth!=null) {
			resultMap.put("result","success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
	
	
	
}
