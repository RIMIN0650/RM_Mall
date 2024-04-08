package com.rimin.mall.cloth.payment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.cloth.payment.domain.Payment;

public interface PaymentRepository  extends JpaRepository<Payment, Integer>{

}
