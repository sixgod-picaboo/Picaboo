package com.sixgod.pojo;
/**
 * 购物车pojo类
 * @author Administrator
 *
 */
public class Shopping_Carts {
	
	private String user_id;
	private String goods_id;
	private String goods_name;
	private String gphoto_path;
	private String goods_price;
	private String goods_info;
	
	public String getGoods_info() {
		return goods_info;
	}
	public void setGoods_info(String goods_info) {
		this.goods_info = goods_info;
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
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGphoto_path() {
		return gphoto_path;
	}
	public void setGphoto_path(String gphoto_path) {
		this.gphoto_path = gphoto_path;
	}
	public String getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
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
	private int goods_num;
	private String goods_size;
	@Override
	public String toString() {
		return "Shopping_Carts [user_id=" + user_id + ", goods_id=" + goods_id + ", goods_name=" + goods_name
				+ ", gphoto_path=" + gphoto_path + ", goods_price=" + goods_price + ", goods_num=" + goods_num
				+ ", goods_size=" + goods_size + "]";
	}
	public Shopping_Carts(String user_id, String goods_id, String goods_name, String gphoto_path, String goods_price,
			int goods_num, String goods_size) {
		super();
		this.user_id = user_id;
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.gphoto_path = gphoto_path;
		this.goods_price = goods_price;
		this.goods_num = goods_num;
		this.goods_size = goods_size;
	}
public Shopping_Carts() {
	// TODO Auto-generated constructor stub
}
}
