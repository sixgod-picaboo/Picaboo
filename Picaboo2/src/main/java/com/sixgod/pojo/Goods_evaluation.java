package com.sixgod.pojo;

public class Goods_evaluation {
	private String goods_id;
	private String geva_text;
	private String user_id;
	private String geva_id;
	private int geva_level;
	private String geva_date;

	public Goods_evaluation(String goods_id, String geva_text, String user_id, String geva_id, int geva_level,
			String geva_date) {
		super();
		this.goods_id = goods_id;
		this.geva_text = geva_text;
		this.user_id = user_id;
		this.geva_id = geva_id;
		this.geva_level = geva_level;
		this.geva_date = geva_date;
	}

	public Goods_evaluation() {
		super();
	}

	@Override
	public String toString() {
		return "Goods_evaluation [goods_id=" + goods_id + ", geva_text=" + geva_text + ", user_id=" + user_id
				+ ", geva_id=" + geva_id + ", geva_level=" + geva_level + ", geva_date=" + geva_date + "]";
	}

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

	public String getGeva_text() {
		return geva_text;
	}

	public void setGeva_text(String geva_text) {
		this.geva_text = geva_text;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getGeva_id() {
		return geva_id;
	}

	public void setGeva_id(String geva_id) {
		this.geva_id = geva_id;
	}

	public int getGeva_level() {
		return geva_level;
	}

	public void setGeva_level(int geva_level) {
		this.geva_level = geva_level;
	}

	public String getGeva_date() {
		return geva_date;
	}

	public void setGeva_date(String geva_date) {
		this.geva_date = geva_date;
	}

}
