package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.dto.UserInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

public class UserDetailsDAO {

	public UserInfoDTO select(String loginId){
		DBConnector db= new DBConnector();
		UserInfoDTO dto= new UserInfoDTO();
		Connection con= db.getConnection();

		String sql="select * from login_user_transaction where login_id = ?";

		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, loginId);
			ResultSet rs=ps.executeQuery();

			if(rs.next()){
				dto.setId(rs.getInt("id"));
				dto.setLoginId(rs.getString("login_id"));
				dto.setPassword(rs.getString("login_pass"));
				dto.setUserName(rs.getString("user_name"));

			}


		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}

		return dto;
	}

}


