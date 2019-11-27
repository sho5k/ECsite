package com.internousdev.ecsite.action;

import com.internousdev.ecsite.dao.ItemDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;
public class ItemDeleteCompleteAction extends ActionSupport{

	private String id;

	public String execute(){
		ItemDeleteCompleteDAO dao= new ItemDeleteCompleteDAO();
		dao.delete(id);
		return SUCCESS;
	}

	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id=id;
	}

}
