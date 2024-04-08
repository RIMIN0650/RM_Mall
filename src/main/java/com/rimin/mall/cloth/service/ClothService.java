package com.rimin.mall.cloth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.cloth.domain.Cloth;
import com.rimin.mall.cloth.domain.Size;
import com.rimin.mall.cloth.repository.ClothRepository;
import com.rimin.mall.cloth.repository.SizeRepository;

@Service
public class ClothService {
	
	@Autowired
	private ClothRepository clothRepository;
	
	@Autowired
	private SizeRepository sizeRepository;
	
	public Cloth addNewCloth(
			String clothName
			, int clothPrice
			, String clothCategory
			, String clothImagePath
			, String clothInfo
			, int countXS
			, int countS
			, int countM
			, int countL
			, int countXL
			) {
		
		Cloth cloth = Cloth.builder()
							.clothName(clothName)
							.clothPrice(clothPrice)
							.clothCategory(clothCategory)
							.clothImagePath(clothImagePath)
							.clothInfo(clothInfo)
							.build();
		
		
		if(countXS != 0) {
		Size size = Size.builder()
						.clothId(cloth.getId())
						.sizeType("XS")
						.sizeCount(countXS)
						.build();
		sizeRepository.save(size);
		}
		
		
		if(countS != 0) {
		Size size = Size.builder()
				.clothId(cloth.getId())
				.sizeType("S")
				.sizeCount(countS)
				.build();
		sizeRepository.save(size);
		}
		
		
		if(countM != 0) {
		Size size = Size.builder()
				.clothId(cloth.getId())
				.sizeType("M")
				.sizeCount(countM)
				.build();
		sizeRepository.save(size);
		}
		
		
		if(countL != 0) {
		Size size = Size.builder()
				.clothId(cloth.getId())
				.sizeType("L")
				.sizeCount(countL)
				.build();
		sizeRepository.save(size);
		}
		
		
		if(countXL != 0) {
		Size size = Size.builder()
				.clothId(cloth.getId())
				.sizeType("XL")
				.sizeCount(countXL)
				.build();
		sizeRepository.save(size);
		}
		
		return clothRepository.save(cloth);
		
	}
}
