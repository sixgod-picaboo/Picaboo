package com.sixgod.pojo;

import java.io.Serializable;

public class Goods implements Serializable {
	public Goods() {
		super();
	}

	private String goods_id;
	private String goods_name;
	private String shop_id;
	private int goods_state;
	private double goods_price;
	private String goods_size;
	private int goods_stock;
	private String gtype_id;
	private String goods_info;
	private Integer goods_level;

	public Goods(String goods_id, String goods_name, String shop_id, int goods_state, double goods_price,
			String goods_size, int goods_stock, String gtype_id, String goods_info) {
		super();
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.shop_id = shop_id;
		this.goods_state = goods_state;
		this.goods_price = goods_price;
		this.goods_size = goods_size;
		this.goods_stock = goods_stock;
		this.gtype_id = gtype_id;
		this.goods_info = goods_info;
	}

	public Integer getGoods_level() {
		return goods_level;
	}

	public void setGoods_level(Integer goods_level) {
		this.goods_level = goods_level;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public int getGoods_state() {
		return goods_state;
	}

	public void setGoods_state(int goods_state) {
		this.goods_state = goods_state;
	}

	public double getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(double goods_price) {
		this.goods_price = goods_price;
	}

	public String getGoods_size() {
		return goods_size;
	}

	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}

	public int getGoods_stock() {
		return goods_stock;
	}

	public void setGoods_stock(int goods_stock) {
		this.goods_stock = goods_stock;
	}

	public String getGtype_id() {
		return gtype_id;
	}

	public void setGtype_id(String gtype_id) {
		this.gtype_id = gtype_id;
	}

	public String getGoods_info() {
		return goods_info;
	}

	public void setGoods_info(String goods_info) {
		this.goods_info = goods_info;
	}

	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", shop_id=" + shop_id + ", goods_state="
				+ goods_state + ", goods_price=" + goods_price + ", goods_size=" + goods_size + ", goods_stock="
				+ goods_stock + ", gtype_id=" + gtype_id + ", goods_info=" + goods_info + "]";
	}

}
