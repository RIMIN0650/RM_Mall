package com.rimin.mall.payment;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaymentController {
	
	// user 결제 정보 저장
	@GetMapping("/user/save/payment")
	public String savePayment() {
		return "user/userPayment";
	}
}
