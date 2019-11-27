package com.internousdev.ecsite.action;

import com.internousdev.ecsite.dao.UserDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteCompleteAction extends ActionSupport{

	private String loginId;

	public String execute(){

		UserDeleteCompleteDAO dao= new UserDeleteCompleteDAO();
		dao.delete(loginId);

		return SUCCESS;
	}

	public String getLoginId(){
		return loginId;
	}
	public void setLoginId(String loginId){
		this.loginId=loginId;
	}


}
