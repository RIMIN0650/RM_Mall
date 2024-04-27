package com.rimin.mall.basket.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.basket.repository.BasketRepository;
import com.rimin.mall.user.domain.User;



@Service
public class BasketService {
	
	
	@Autowired 
	private BasketRepository basketRepository;
	
	// 장바구니 담는 기능
	public Basket addCart(int userId, int clothId, String clothSize, int clothCount) {
		Basket basket = Basket.builder()
							.userId(userId)
							.clothId(clothId)
							.clothSize(clothSize)
							.clothCount(clothCount)
							.clothStatus("주문대기")
							.build();
		return basketRepository.save(basket);
	}
	

}
