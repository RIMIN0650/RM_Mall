package com.rimin.mall.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.user.domain.User;

public interface UserRepository extends JpaRepository<User,Integer>  {
	// Integer : primary key 타입
	
}
