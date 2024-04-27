package com.rimin.mall.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.user.domain.User;
import com.rimin.mall.user.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	// 회원가입
	public User addUser(String loginId
					, String password
					, String name
					, String email
					, String phoneNumber
					, String address) {
		User user = User.builder()
					.loginId(loginId)
					.password(password)
					.name(name)
					.email(email)
					.phoneNumber(phoneNumber)
					.address(address)
					.build();
		
		return userRepository.save(user);
	}
	
	
	// id 중복 확인
	public boolean isDuplicateId(String loginId) {
		int count = userRepository.countByLoginId(loginId);
		
		if(count != 0) { // 아이디 중복 아님
			return true;
		} else {
			return false;
		}
	}
	
	
	// 로그인 기능
	public User getUser(String loginId, String loginPw) {
		return userRepository.findByLoginIdAndPassword(loginId, loginPw);
	}
	
	// 장바구니 담는 기능
//	public User addCart(int userId, int clothId, String productSize, int productCount) {
//		
//	}
	

}
