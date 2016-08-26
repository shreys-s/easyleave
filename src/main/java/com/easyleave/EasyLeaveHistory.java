package com.easyleave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.net.*;

public class EasyLeaveHistory {
	public static ResultSet test(String userid) throws URISyntaxException, SQLException{
		Connection con=DBConnection.getConnection();
		Statement stm=con.createStatement();
		PreparedStatement p=con.prepareStatement("select * from emp_leave where EmpID=?");
		p.setString(1, userid);
		ResultSet rs=p.executeQuery();
		con.close();
		return rs;
		
	}


}
