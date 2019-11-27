package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemDeleteCompleteDAO {

	public void delete(String id){

		DBConnector db= new DBConnector();
		Connection con=db.getConnection();
		String sql="delete from item_info_transaction where id=?";

		try{
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}

	}

}
