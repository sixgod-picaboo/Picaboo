package com.sixgod.pojo;

import java.util.Date;

/**
 * 订单表的类
 * 
 * @author Administrator
 *
 */
public class User_orders {
	public User_orders() {
		super();
	}

	private String orders_id;
	private String user_id;
	private String goods_id;
	private double goods_price;
	private int goods_num;
	private int goods_state;
	private String orders_date;
	private String user_addr;
	private String goods_size;

	public User_orders(String orders_id, String user_id, String goods_id, double goods_price, int goods_num,
			int goods_state, String orders_date, String user_addr, String goods_size) {
		super();
		this.orders_id = orders_id;
		this.user_id = user_id;
		this.goods_id = goods_id;
		this.goods_price = goods_price;
		this.goods_num = goods_num;
		this.goods_state = goods_state;
		this.orders_date = orders_date;
		this.user_addr = user_addr;
		this.goods_size = goods_size;
	}

	@Override
	public String toString() {
		return "user_orders [orders_id=" + orders_id + ", user_id=" + user_id + ", goods_id=" + goods_id
				+ ", goods_price=" + goods_price + ", goods_num=" + goods_num + ", goods_state=" + goods_state
				+ ", orders_date=" + orders_date + ", user_addr=" + user_addr + ", goods_size=" + goods_size + "]";
	}

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

	public String getOrders_date() {
		return orders_date;
	}

	public void setOrders_date(String orders_date) {
		this.orders_date = orders_date;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getGoods_size() {
		return goods_size;
	}

	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}

}
