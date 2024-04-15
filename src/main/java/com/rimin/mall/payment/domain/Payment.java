package com.rimin.mall.payment.domain;

import java.util.Date;

import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Table(name="payment")
@Entity
public class Payment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="userId")
	private int userId;
	
	@Column(name="bankType")
	private String bankType;
	
	@Column(name="cardNumber")
	private String cardNumber;
	
	@Column(name="validMonth")
	private int validMonth;
	
	@Column(name="validYear")
	private int validYear;
	
	@Column(name="cardPassword")
	private String cardPassword;
	
	@UpdateTimestamp
	@Column(name="createdAt", updatable=false) // false : 업데이트 되는 것 막아줌
	private Date createdAt;
	
	@UpdateTimestamp
	@Column(name="updatedAt")
	private Date updatedAt;
	
	
}
