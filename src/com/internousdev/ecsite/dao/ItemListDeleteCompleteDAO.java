package com.internousdev.ecsite.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemListDeleteCompleteDAO {

	public void delete(){

		DBConnector db= new DBConnector();
		Connection con = db.getConnection();
		String sql="delete from item_info_transaction";
		try{
			PreparedStatement ps= con.prepareStatement(sql);
			ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
