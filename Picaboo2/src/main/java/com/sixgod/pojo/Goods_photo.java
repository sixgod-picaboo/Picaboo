package com.sixgod.pojo;

import java.io.Serializable;

public class Goods_photo implements Serializable {
	private String goods_id;
	private String gphoto_path;

	public Goods_photo(String goods_id, String gphoto_path) {
		super();
		this.goods_id = goods_id;
		this.gphoto_path = gphoto_path;
	}

	@Override
	public String toString() {
		return "Goods_photo [goods_id=" + goods_id + ", gphoto_path=" + gphoto_path + "]";
	}

	public String getGoods_id() {
		return goods_id;
	}

	public Goods_photo() {
		super();
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGphoto_path() {
		return gphoto_path;
	}

	public void setGphoto_path(String gphoto_path) {
		this.gphoto_path = gphoto_path;
	}

}
