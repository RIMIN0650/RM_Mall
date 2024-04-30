package com.rimin.mall.manager.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.basket.repository.BasketRepository;
import com.rimin.mall.manager.dto.Order;
import com.rimin.mall.user.domain.User;
import com.rimin.mall.user.repository.UserRepository;

@Service
public class ManagerService {
	
	@Autowired
	private BasketRepository basketRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	public List<Order> getOrderList(){
		
		List<Basket> basketList = basketRepository.findAll();
		
		List<Order> orderList = new ArrayList<>();
		
		for(Basket basket : basketList) {
			
			int userId = basket.getUserId();
			
			Optional<User> optionalUser = userRepository.findById(userId);
			User user = optionalUser.orElse(null);
			
			Order order =  Order.builder()
									.id(basket.getId())
									.userName(user.getName())
									.clothSize(basket.getClothSize())
									.clothName(basket.getClothName())
									.clothCount(basket.getClothCount())
									.userAddress(user.getAddress())
									.clothStatus(basket.getClothStatus())
									.build();
			orderList.add(order);
			
		}
		
		return orderList;
		
	}
	
	
	
}
