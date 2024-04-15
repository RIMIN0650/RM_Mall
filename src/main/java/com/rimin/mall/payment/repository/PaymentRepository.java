package com.rimin.mall.payment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rimin.mall.payment.domain.Payment;

public interface PaymentRepository  extends JpaRepository<Payment, Integer>{

}
