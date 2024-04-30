package com.rimin.mall.manager.dto;


import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class OrderList {
	private int id;
	private String userName;
	private String clothName;
	private int clothCount;
	private String userAddress;
	private String clothStatus;
}
