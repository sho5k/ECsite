package com.internousdev.ecsite.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserListDeleteCompleteDAO {

	public void delete(){

		DBConnector db= new DBConnector();
		Connection con = db.getConnection();
		String sql="delete from login_user_transaction where admin_flg != 1";
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
