package com.sixgod.pojo;

public class Delivery_send {
	public Delivery_send() {
		super();
	}

	private String orders_id;
	private String track_num;
	private String goods_id;
	private String goods_size;

	public Delivery_send(String orders_id, String track_num, String goods_id, String goods_size) {
		super();
		this.orders_id = orders_id;
		this.track_num = track_num;
		this.goods_id = goods_id;
		this.goods_size = goods_size;
	}

	@Override
	public String toString() {
		return "Delivery_send [orders_id=" + orders_id + ", track_num=" + track_num + ", goods_id=" + goods_id
				+ ", goods_size=" + goods_size + "]";
	}

	public String getOrders_id() {
		return orders_id;
	}

	public void setOrders_id(String orders_id) {
		this.orders_id = orders_id;
	}

	public String getTrack_num() {
		return track_num;
	}

	public void setTrack_num(String track_num) {
		this.track_num = track_num;
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_size() {
		return goods_size;
	}

	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}

}
