package com.rimin.mall.manager.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.basket.repository.BasketRepository;
import com.rimin.mall.manager.dto.OrderList;
import com.rimin.mall.user.domain.User;
import com.rimin.mall.user.repository.UserRepository;

@Service
public class ManagerService {
	
	@Autowired
	private BasketRepository basketRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	public List<OrderList> getOrderList(){
		
		List<Basket> basketList = basketRepository.findAll();
		
		
		List<OrderList> everyOrderList = new ArrayList<>();
		
		
		
		for(Basket basket : basketList) {
			
			Optional<User> optionalUser = userRepository.findById(basket.getUserId());
			User user = optionalUser.orElse(null);
			
			OrderList orderList =  OrderList.builder()
									.id(basket.getId())
									.userName(user.getName())
									.clothName(basket.getClothName())
									.clothCount(basket.getClothCount())
									.userAddress(user.getAddress())
									.clothStatus(basket.getClothStatus())
									.build();
			everyOrderList.add(orderList);
			
		}
		
		return everyOrderList;
		
	}
	
	
	
}
