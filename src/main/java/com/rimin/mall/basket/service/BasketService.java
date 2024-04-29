package com.rimin.mall.basket.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.basket.dto.BasketDetail;
import com.rimin.mall.basket.repository.BasketRepository;
import com.rimin.mall.cloth.domain.Cloth;
import com.rimin.mall.cloth.repository.ClothRepository;

@Service
public class BasketService {
	
	
	@Autowired 
	private BasketRepository basketRepository;
	
	@Autowired
	private ClothRepository clothRepository;
	
	// 장바구니 담는 기능
	public Basket addCart(int userId, String clothName, String clothSize, int clothCount) {
		Basket basket = Basket.builder()
							.userId(userId)
							.clothName(clothName)
							.clothSize(clothSize)
							.clothCount(clothCount)
							.clothStatus("주문대기")
							.build();
		return basketRepository.save(basket);
	}
	
	
	public List<BasketDetail> getBasketList(int loginUserId){
		
		List<Basket> basketList = basketRepository.findByUserIdOrderByIdDesc(loginUserId);
		
		
		
		List<BasketDetail> basketDetailList = new ArrayList<>();
		
		for(Basket basket:basketList) {
			
			int userId = basket.getUserId();
			
			Cloth cloth = clothRepository.findByClothName(basket.getClothName());
			
			BasketDetail basketDetail = BasketDetail.builder()
										.clothName(cloth.getClothName())
										.clothSize(basket.getClothSize())
										.clothStatus("장바구니")
										.clothCount(basket.getClothCount())
										.clothPrice(cloth.getClothPrice())
										.build();
			
			basketDetailList.add(basketDetail);
		}
		
		return basketDetailList;
	}

}
