package com.rimin.mall.basket.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.basket.domain.Basket;

public interface BasketRepository extends JpaRepository <Basket,Integer> {

	
}
