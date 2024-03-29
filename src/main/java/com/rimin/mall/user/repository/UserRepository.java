package com.rimin.mall.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.user.domain.User;

public interface UserRepository extends JpaRepository<User,Integer>  {
	// Integer : primary key 타입
	
	
	// select count(*) from `user` where `loginId` = loginId;
	// 아이디 개수 세기 0 : 중복 아님 , 1 : 중복
	public int countByLoginId(String loginId);
	
	
	// 로그인 기능, 아이디 & 비밀번호 확인
	public User findByLoginIdAndPassword(String loginId, String password);
	
	
}
