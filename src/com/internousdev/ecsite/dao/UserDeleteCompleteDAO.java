package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserDeleteCompleteDAO {

	public void delete(String loginId){
		DBConnector db= new DBConnector();
		Connection con = db.getConnection();
		String sql="delete from login_user_transaction where login_id = ?";

		try{
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1,loginId);
			ps.executeUpdate();

		}catch(SQLException e){
			e.printStackTrace();
		}
	}

}
