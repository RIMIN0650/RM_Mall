package com.rimin.mall.main.dto;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class ProductDetail {
	// 필요없을수도있음
	private int clothId;
	private String productImage;
	private String productName;
	private int productPrice;
	private int productCnt;
	private String productCategory;
}
