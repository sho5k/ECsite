package com.internousdev.ecsite.action;

import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemDetailsDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;
public class ItemDetailsAction extends ActionSupport{

	private String id;

	ItemDetailsDAO dao= new ItemDetailsDAO();
	ItemInfoDTO dto= new ItemInfoDTO();
	ArrayList<ItemInfoDTO> itemDTOList =new ArrayList<ItemInfoDTO>();


	public String execute(){
		String ret=SUCCESS;


		itemDTOList.add(dao.select(id));

		return ret;
	}


	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id=id;
	}
	public ArrayList<ItemInfoDTO> getItemDTOList(){
		return itemDTOList;
	}
	public void setItemDTOList(ArrayList<ItemInfoDTO> itemDTOList){
		this.itemDTOList=itemDTOList;
	}

}
