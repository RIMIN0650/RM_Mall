package com.rimin.mall.cloth.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rimin.mall.cloth.payment.domain.Payment;
import com.rimin.mall.cloth.payment.repository.PaymentRepository;
@Service
public class PaymentService {
	
	@Autowired PaymentRepository paymentRepository;
	
	// 결제 정보 저장
	public Payment savePayment(
							int userId
							, String bankType
							, String cardNumber
							, int validMonth
							, int validYear
							, String cardPassword) {
		Payment payment = Payment.builder()
							.userId(userId)
							.bankType(bankType)
							.cardNubmer(cardNumber)
							.validMonth(validMonth)
							.validYear(validYear)
							.cardPassword(cardPassword)
							.build();
		
		return paymentRepository.save(payment);
	}
}
