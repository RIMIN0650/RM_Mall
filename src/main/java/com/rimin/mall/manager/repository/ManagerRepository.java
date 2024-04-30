package com.rimin.mall.manager.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.manager.domain.Manager;

public interface ManagerRepository extends JpaRepository<Manager,Integer> {

	public int countByLoginId(String loginId);
	
}
