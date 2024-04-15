package com.rimin.mall.cloth.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.cloth.domain.Cloth;

public interface ClothRepository extends JpaRepository<Cloth,Integer> {
	
	public List<Cloth> findAll();

	
}
