package com.rimin.mall.manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.manager.domain.Manager;

public interface ManagerRepository extends JpaRepository<Manager,Integer> {

	public int countByLoginId(String loginId);
	
	// 로그인 기능, 아이디 & 비밀번호 확인
	public Manager findByLoginIdAndPassword(String loginId, String password);
	
}
