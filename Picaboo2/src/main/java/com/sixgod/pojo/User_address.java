package com.sixgod.pojo;

public class User_address {
	public User_address() {
		super();
	}

	private String user_id;
	private String user_addr;
	private String user_tel;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	@Override
	public String toString() {
		return "User_address [user_id=" + user_id + ", user_addr=" + user_addr + ", user_tel=" + user_tel + "]";
	}

	public User_address(String user_id, String user_addr, String user_tel) {
		super();
		this.user_id = user_id;
		this.user_addr = user_addr;
		this.user_tel = user_tel;
	}

}
