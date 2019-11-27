package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.UserInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserListDAO {

	public ArrayList<UserInfoDTO> select(){

		DBConnector db= new DBConnector();
		Connection con= db.getConnection();
		String sql="select * from login_user_transaction";
		ArrayList<UserInfoDTO> userList = new ArrayList<UserInfoDTO>();

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while(rs.next()){
				UserInfoDTO dto = new UserInfoDTO();

				dto.setId(rs.getInt("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));

				userList.add(dto);
			}

		}catch(SQLException e){
			e.printStackTrace();
		}

		return userList;
	}

}
