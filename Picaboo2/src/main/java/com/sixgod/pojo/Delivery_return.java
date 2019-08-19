package com.sixgod.pojo;

public class Delivery_return {
	public Delivery_return() {
		super();
	}

	private String orders_id;
	private String track_num;
	private String goods_id;
	private int state;
	private String goods_size;

	public Delivery_return(String orders_id, String track_num, String goods_id, int state, String goods_size) {
		super();
		this.orders_id = orders_id;
		this.track_num = track_num;
		this.goods_id = goods_id;
		this.state = state;
		this.goods_size = goods_size;
	}

	@Override
	public String toString() {
		return "Delivery_return [orders_id=" + orders_id + ", track_num=" + track_num + ", goods_id=" + goods_id
				+ ", state=" + state + ", goods_size=" + goods_size + "]";
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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getGoods_size() {
		return goods_size;
	}

	public void setGoods_size(String goods_size) {
		this.goods_size = goods_size;
	}

}
