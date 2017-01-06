package com.easyleave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EasyLeaveHistory {
	public static ResultSet test(String userid) throws SQLException{
		Connection con=DBConnection.getConnection();
		Statement stm=con.createStatement();
		PreparedStatement p=con.prepareStatement("select * from emp_leave where EmpID=?");
		p.setString(1, userid);
		ResultSet rs=p.executeQuery();
		con.close();
		return rs;
		
	}


}
