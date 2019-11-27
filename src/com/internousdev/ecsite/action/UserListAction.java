package com.internousdev.ecsite.action;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport{

	ArrayList<UserInfoDTO> userList= new ArrayList<UserInfoDTO>();
	UserListDAO dao= new UserListDAO();

	public String execute(){
		String ret=SUCCESS;
		userList=dao.select();

		return ret;
	}


	public ArrayList<UserInfoDTO> getUserList(){
		return userList;
	}
	public void setUserList(ArrayList<UserInfoDTO> userList){
		this.userList=userList;
	}
}
