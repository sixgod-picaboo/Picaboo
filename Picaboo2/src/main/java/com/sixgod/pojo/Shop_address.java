package com.sixgod.pojo;

public class Shop_address {
	public Shop_address() {
		super();
	}

	private String shop_id;
	private String shop_addr;
	private String shop_tel;

	public Shop_address(String shop_id, String shop_addr, String shop_tel) {
		super();
		this.shop_id = shop_id;
		this.shop_addr = shop_addr;
		this.shop_tel = shop_tel;
	}

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_addr() {
		return shop_addr;
	}

	public void setShop_addr(String shop_addr) {
		this.shop_addr = shop_addr;
	}

	public String getShop_tel() {
		return shop_tel;
	}

	public void setShop_tel(String shop_tel) {
		this.shop_tel = shop_tel;
	}

	@Override
	public String toString() {
		return "Shop_address [shop_id=" + shop_id + ", shop_addr=" + shop_addr + ", shop_tel=" + shop_tel + "]";
	}

}
