package com.rimin.mall.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.user.domain.User;
import com.rimin.mall.user.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	
	public User addUser(String loginId
					, String password
					, String name
					, String email
					, String phoneNumber
					, String address
					, String status) {
		User user = User.builder()
					.loginId(loginId)
					.password(password)
					.name(name)
					.email(email)
					.phoneNumber(phoneNumber)
					.address(address)
					.status(status)
					.build();
		
		return userRepository.save(user);
		
		
		
	}
	
	
	
}
