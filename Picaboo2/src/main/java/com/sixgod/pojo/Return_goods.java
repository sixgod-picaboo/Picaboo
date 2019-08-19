package com.sixgod.pojo;

import java.util.Date;

public class Return_goods {
	public Return_goods() {
		super();
	}

	private String orders_id;
	private String user_id;
	private String goods_id;
	private double goods_price;
	private int goods_num;
	private int goods_state;
	private String return_date;
	private int original_state;
	private String goods_size;

	public String getOrders_id() {
		return orders_id;
	}

	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}

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

	public double getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(double goods_price) {
		this.goods_price = goods_price;
	}

	public int getGoods_num() {
		return goods_num;
	}

	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}

	public int getGoods_state() {
		return goods_state;
	}

	public void setGoods_state(int goods_state) {
		this.goods_state = goods_state;
	}

	public String getReturn_date() {
		return return_date;
	}

	public void setReturn_date(String return_date) {
		this.return_date = return_date;
	}

	public int getOriginal_state() {
		return original_state;
	}

	public void setOriginal_state(int original_state) {
		this.original_state = original_state;
	}

	public String getGoods_size() {
		return goods_size;
	}

	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}

	@Override
	public String toString() {
		return "Return_goods [orders_id=" + orders_id + ", user_id=" + user_id + ", goods_id=" + goods_id
				+ ", goods_price=" + goods_price + ", goods_num=" + goods_num + ", goods_state=" + goods_state
				+ ", return_date=" + return_date + ", original_state=" + original_state + ", goods_size=" + goods_size
				+ "]";
	}

	public Return_goods(String orders_id, String user_id, String goods_id, double goods_price, int goods_num,
			int goods_state, String return_date, int original_state, String goods_size) {
		super();
		this.orders_id = orders_id;
		this.user_id = user_id;
		this.goods_id = goods_id;
		this.goods_price = goods_price;
		this.goods_num = goods_num;
		this.goods_state = goods_state;
		this.return_date = return_date;
		this.original_state = original_state;
		this.goods_size = goods_size;
	}

}
