package com.rimin.mall.basket.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.basket.domain.Basket;

public interface BasketRepository extends JpaRepository <Basket,Integer> {

	public List<Basket> findByUserIdOrderByIdDesc(int userId);
	
	public Optional<Basket> findByUserIdAndClothNameAndClothSize(int userId, String clothName, String clothSize);
	
	public Optional<Basket> findById(int id);
}
