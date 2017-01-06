package com.easyleave;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EasyAdminLogin {
	
	public static ResultSet test() throws SQLException{
		Connection con=DBConnection.getConnection();
		Statement stm=con.createStatement();
		String query="select * from admin";
		ResultSet rs=stm.executeQuery(query);
		con.close();
		return rs;
		
	}

}
