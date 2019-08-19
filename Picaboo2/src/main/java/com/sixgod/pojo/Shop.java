package com.sixgod.pojo;

public class Shop {
	private String shop_id;
	private String user_id;
	private String shop_name;
	private String shop_info;
	private int shop_state;
	private int shop_level;

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public int getShop_state() {
		return shop_state;
	}

	public void setShop_state(int shop_state) {
		this.shop_state = shop_state;
	}

	public int getShop_level() {
		return shop_level;
	}

	public void setShop_level(int shop_level) {
		this.shop_level = shop_level;
	}

	public Shop() {
		super();
	}

	public String getShop_info() {
		return shop_info;
	}

	public void setShop_info(String shop_info) {
		this.shop_info = shop_info;
	}

	public Shop(String shop_id, String user_id, String shop_name, int shop_state, int shop_level, String shop_info) {
		super();
		this.shop_id = shop_id;
		this.user_id = user_id;
		this.shop_name = shop_name;
		this.shop_info = shop_info;
		this.shop_state = shop_state;
		this.shop_level = shop_level;
	}

	@Override
	public String toString() {
		return "Shop [shop_id=" + shop_id + ", user_id=" + user_id + ", shop_name=" + shop_name + ", shop_info="
				+ shop_info + ", shop_state=" + shop_state + ", shop_level=" + shop_level + "]";
	}

}
