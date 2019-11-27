package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemConfirmAction extends ActionSupport implements SessionAware{

	private Map<String,Object> session;
	private BuyItemCompleteDAO buyItemCompleteDAO=new BuyItemCompleteDAO();
	boolean stockFlg;
	BuyItemDAO buyItemDAO=new BuyItemDAO();
	BuyItemDTO dto= new BuyItemDTO();
	public String execute() throws SQLException{
		String result = SUCCESS;

		dto=buyItemDAO.getBuyItemInfo();
		int stock_count=(dto.getItemStock())-(Integer.parseInt(session.get("count").toString()));

		if((dto.getItemStock()) < (Integer.parseInt(session.get("count").toString()))){
			result=ERROR;
			stockFlg=false;
		}else{
			buyItemCompleteDAO.updateItemStock(stock_count,dto.getId());

			buyItemCompleteDAO.buyItemInfo(
					session.get("id").toString(),
					session.get("total_price").toString(),
					session.get("count").toString(),
					session.get("login_user_id").toString(),
					session.get("pay").toString());
			stockFlg=true;
		}
		return result;
	}

	public boolean getStockFlg(){
		return stockFlg;
	}
	public void setStockFlg(boolean stockFlg){
		this.stockFlg=stockFlg;
	}
	public Map<String,Object> getSession(){
		return this.session;
	}
	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

}
