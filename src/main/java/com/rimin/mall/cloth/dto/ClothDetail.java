package com.rimin.mall.cloth.dto;


import lombok.Builder;
import lombok.Getter;

@Builder
@Getter

//제품 하나의 카드를 만들기 위해
public class ClothDetail {
		private int id;
		private String clothName; // 상품명
		private String clothImageUrl;
		private int clothId; // primary key
		private int clothPrice; // 상품 가격

}
