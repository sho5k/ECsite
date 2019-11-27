package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;

public class UserCreateCompleteDAO {


	public boolean checkUser(String loginUserId){
		DBConnector db= new DBConnector();
		Connection con= db.getConnection();
		String sql="select count(*) from login_user_transaction where login_id=?";
		boolean check=false;

		try{
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ResultSet rs =ps.executeQuery();
			if(rs.next()){
				if(rs.getInt("count(*)")==0){
					check=true;
				}
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		try{
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return check;
	}

	public void createUser(String loginUserId, String loginUserPassword,String userName)throws SQLException{
		DBConnector db= new DBConnector();
		Connection con = db.getConnection();
		DateUtil dateUtil = new DateUtil();

		String sql="insert into login_user_transaction(login_id,login_pass,user_name,insert_date,admin_flg) values(?,?,?,?,0)";

		try{
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ps.setString(2, loginUserPassword);
			ps.setString(3, userName);
			ps.setString(4, dateUtil.getDate());

			ps.execute();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			con.close();
		}
	}

}
