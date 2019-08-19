package com.sixgod.pojo;

import java.io.Serializable;

public class Goods_type implements Serializable {
	public Goods_type() {
		super();
	}

	private String gtype_id;
	private String gtype_name;

	public Goods_type(String gtype_id, String gtype_name) {
		super();
		this.gtype_id = gtype_id;
		this.gtype_name = gtype_name;
	}

	public String getGtype_id() {
		return gtype_id;
	}

	public void setGtype_id(String gtype_id) {
		this.gtype_id = gtype_id;
	}

	public String getGtype_name() {
		return gtype_name;
	}

	public void setGtype_name(String gtype_name) {
		this.gtype_name = gtype_name;
	}

	@Override
	public String toString() {
		return "Goods_type [gtype_id=" + gtype_id + ", gtype_name=" + gtype_name + "]";
	}

}
