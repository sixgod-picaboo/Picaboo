package com.sixgod.pojo;

public class Shopping_cart {
	public Shopping_cart() {
		super();
	}

	private String user_id;
	private String goods_id;
	private int goods_num;
	private String goods_size;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public int getGoods_num() {
		return goods_num;
	}

	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}

	public String getGoods_size() {
		return goods_size;
	}

	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}

	public Shopping_cart(String user_id, String goods_id, int goods_num, String goods_size) {
		super();
		this.user_id = user_id;
		this.goods_id = goods_id;
		this.goods_num = goods_num;
		this.goods_size = goods_size;
	}

	@Override
	public String toString() {
		return "Shopping_cart [user_id=" + user_id + ", goods_id=" + goods_id + ", goods_num=" + goods_num
				+ ", goods_size=" + goods_size + "]";
	}

}
