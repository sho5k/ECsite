package com.internousdev.ecsite.action;

import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserDetailsDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;
public class UserDetailsAction extends ActionSupport{

	private String loginId;

	UserDetailsDAO dao= new UserDetailsDAO();
	UserInfoDTO dto= new UserInfoDTO();
	ArrayList<UserInfoDTO> userDetailsList =new ArrayList<UserInfoDTO>();


	public String execute(){
		String ret=SUCCESS;


		userDetailsList.add(dao.select(loginId));

		return ret;
	}


	public String getLoginId(){
		return loginId;
	}
	public void setLoginId(String loginId){
		this.loginId=loginId;
	}
	public ArrayList<UserInfoDTO> getUserDetailsList(){
		return userDetailsList;
	}
	public void setUserDetailsList(ArrayList<UserInfoDTO> userDetailsList){
		this.userDetailsList=userDetailsList;
	}

}
