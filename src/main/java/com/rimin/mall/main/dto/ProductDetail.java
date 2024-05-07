package com.rimin.mall.main.dto;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class ProductDetail {
	private int clothId;
	private String productImage;
	private String productName;
	private int productPrice;
	private int productCnt;
	private String productCategory;
}
