package com.rimin.mall.cloth.payment;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rimin.mall.cloth.payment.domain.Payment;
import com.rimin.mall.cloth.payment.service.PaymentService;

import jakarta.servlet.http.HttpSession;
@RestController
public class PaymentRestController {
	
	@Autowired PaymentService paymentService;
	
	// 결제 정보 저장
	@PostMapping("/user/payment")
	public Map<String, String> savePayment(
								@RequestParam("bankType") String bankType
								, @RequestParam("cardNumber") String cardNumber
								, @RequestParam("validMonth") int validMonth
								, @RequestParam("validYear") int validYear
								, @RequestParam("cardPassword") String cardPassword
								, HttpSession session){
		
		int userId = (Integer)session.getAttribute("userId");
		
		Payment payment = paymentService.savePayment(userId, bankType, cardNumber, validMonth, validYear, cardPassword);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(payment != null ) {
			resultMap.put("result", "success");	
		} else {
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	
}
