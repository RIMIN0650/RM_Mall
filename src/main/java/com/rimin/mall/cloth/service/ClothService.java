package com.rimin.mall.cloth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.cloth.domain.Cloth;
import com.rimin.mall.cloth.repository.ClothRepository;

@Service
public class ClothService {
	
	@Autowired
	private ClothRepository clothRepository;
	
	
	
	public Cloth addNewCloth(
			String clothName
			, int clothPrice
			, String clothCategory
			, String clothImagePath
			, String clothInfo) {
		
		Cloth cloth = Cloth.builder()
							.clothName(clothName)
							.clothPrice(clothPrice)
							.clothCategory(clothCategory)
							.clothImage(clothImagePath)
							.clothInfo(clothInfo)
							.build();
		
		return clothRepository.save(cloth);
		
	}
}
