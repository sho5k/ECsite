package com.internousdev.ecsite.dto;

public class UserInfoDTO {

	private int id;
	private String loginId;
	private String password;
	private String userName;

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getLoginId(){
		return loginId;
	}
	public void setLoginId(String loginId){
		this.loginId=loginId;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName=userName;
	}
}
