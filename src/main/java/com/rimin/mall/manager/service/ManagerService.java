package com.rimin.mall.manager.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.basket.domain.Basket;
import com.rimin.mall.basket.repository.BasketRepository;
import com.rimin.mall.manager.domain.Manager;
import com.rimin.mall.manager.dto.Order;
import com.rimin.mall.manager.repository.ManagerRepository;
import com.rimin.mall.user.domain.User;
import com.rimin.mall.user.repository.UserRepository;

@Service
public class ManagerService {
	
	@Autowired
	private BasketRepository basketRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ManagerRepository managerRepository;
	
	
	//매니저 회원가입
	public Manager addManager(String loginId
								, String password
								, String name) {
		Manager manager = Manager.builder()
									.loginId(loginId)
									.password(password)
									.managerName(name)
									.build();
		
		return managerRepository.save(manager);
	}
	
	
	// 로그인 기능
		public Manager getManager(String loginId, String loginPw) {
			return managerRepository.findByLoginIdAndPassword(loginId, loginPw);
		}
	
	
	
	// 아이디 중복 확인
	public boolean isDuplicateId(String loginId) {
		int count = managerRepository.countByLoginId(loginId);
		
		if(count != 0) { // 아이디 중복 아님
			return true;
		} else {
			return false;
		}
	}
	
	
	
	
	
	
	
	
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
	
	
	// 배송중 상태로 변경
	public Basket updateStatusOnDeliver(int id) {
		Optional<Basket> optionalBasket = basketRepository.findById(id);
		Basket basket = optionalBasket.orElse(null);
		
		
		if(basket != null) {
			basket = basket.toBuilder()
						.clothStatus("배송중")
						.build();
			basket = basketRepository.save(basket);
		}
		return basket;
		
	}
	
	
	// 배송완료 상태로 변경
		public Basket updateStatusDelivered(int id) {
			Optional<Basket> optionalBasket = basketRepository.findById(id);
			Basket basket = optionalBasket.orElse(null);
			
			
			if(basket != null) {
				basket = basket.toBuilder()
							.clothStatus("배송 완료")
							.build();
				basket = basketRepository.save(basket);
			}
			return basket;
			
		}
	
}
