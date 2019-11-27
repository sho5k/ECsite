package com.internousdev.ecsite.action;

import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport{

	ArrayList<ItemInfoDTO> itemList=new ArrayList<ItemInfoDTO>();
	ItemListDAO dao= new ItemListDAO();
	public String execute(){
		itemList=dao.select();
		return SUCCESS;
	}

	public ArrayList<ItemInfoDTO> getItemList(){
		return itemList;
	}

	public void setItemList(ArrayList<ItemInfoDTO> itemList){
		this.itemList=itemList;
	}
}
