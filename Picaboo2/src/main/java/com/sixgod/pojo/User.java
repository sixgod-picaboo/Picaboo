package com.sixgod.pojo;

public class User {
	private String user_id;
	private String user_name;
	private String user_pwd;
	private String user_sex;
	private Integer user_state;
	private String user_tel;
	private String user_idcard;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public User() {
		super();
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public Integer getUser_state() {
		return user_state;
	}

	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getUser_idcard() {
		return user_idcard;
	}

	public void setUser_idcard(String user_idcard) {
		this.user_idcard = user_idcard;
	}

	@Override
	public String toString() {
		return "user [user_id=" + user_id + ", user_name=" + user_name + ", user_pwd=" + user_pwd + ", user_sex="
				+ user_sex + ", user_state=" + user_state + ", user_tel=" + user_tel + ", user_idcard=" + user_idcard
				+ "]";
	}

	public User(String user_id, String user_name, String user_pwd, String user_sex, Integer user_state, String user_tel,
			String user_idcard) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_sex = user_sex;
		this.user_state = user_state;
		this.user_tel = user_tel;
		this.user_idcard = user_idcard;
	}

}
