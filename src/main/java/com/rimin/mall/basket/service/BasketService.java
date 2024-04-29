package com.rimin.mall.basket.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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
		
		
		Optional<Basket> optionalBasket = basketRepository.findByUserIdAndClothNameAndClothSize(userId, clothName, clothSize);
		Basket basket = optionalBasket.orElse(null);
		
		if(basket != null) {
			basket = basket.toBuilder()
					.clothCount(clothCount + basket.getClothCount())
					.build();
		return basketRepository.save(basket);
		
		} else {
		
			basket = Basket.builder()
							.userId(userId)
							.clothName(clothName)
							.clothSize(clothSize)
							.clothCount(clothCount)
							.clothStatus("장바구니")
							.build();
		return basketRepository.save(basket);
		}
	}
	
	
	// 사용자별 장바구니 조회 기능
	public List<BasketDetail> getBasketList(int loginUserId){
		
		List<Basket> basketList = basketRepository.findByUserIdOrderByIdDesc(loginUserId);
		
		
		
		List<BasketDetail> basketDetailList = new ArrayList<>();
		
		for(Basket basket:basketList) {
			
			
			Cloth cloth = clothRepository.findByClothName(basket.getClothName());
			
			BasketDetail basketDetail = BasketDetail.builder()
										.id(basket.getId())
										.clothName(cloth.getClothName())
										.clothSize(basket.getClothSize())
										.clothStatus(basket.getClothStatus())
										.clothCount(basket.getClothCount())
										.clothPrice(cloth.getClothPrice())
										.build();
			
			basketDetailList.add(basketDetail);
		}
		
		return basketDetailList;
	}

	// 주문목록 삭제
	public Basket deleteBasket(int id) {
		
		Optional<Basket> optionalBasket = basketRepository.findById(id);
		Basket basket = optionalBasket.orElse(null);
		
		
		if(basket != null) {
			basketRepository.delete(basket);
		}
		
		return basket;
	}
	
	
	// 주문대기 > 주문완료 & 접수대기
	public Basket updateStatus(int id) {
		
		Optional<Basket> optionalBasket = basketRepository.findById(id);
		Basket basket = optionalBasket.orElse(null);
		
		if(basket != null) {
			basket = basket.toBuilder()
					.clothStatus("주문 완료")
					.build();
					
			basket = basketRepository.save(basket);
		}
		return basket;
	}
	
	
	
	// 여러 항목 주문 완료 상태로 
	public List<Basket> updateMultipleStatus(List<Integer> ids) {
		
		List<Basket> updatedBaskets = new ArrayList<>();
		
		for(Integer basketId : ids) {
			Optional<Basket> optionalBasket = basketRepository.findById(basketId);
			Basket basket = optionalBasket.orElse(null);
			
			if(basket != null) {
				basket= basket.toBuilder()
						.clothStatus("주문 완료")
						.build();
				Basket updatedBasket =  basketRepository.save(basket);
				updatedBaskets.add(updatedBasket);
				
			}
		}
		
		return updatedBaskets;
	}
	
	
	
}
