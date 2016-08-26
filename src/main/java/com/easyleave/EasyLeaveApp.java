package com.easyleave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.net.*;

public class EasyLeaveApp {
	public static int test(String leave_id, String leave_type, String startdate, String enddate,String status,String userid,String comment) throws URISyntaxException, SQLException{
		
		
		Connection con=DBConnection.getConnection();
    	Statement stm=con.createStatement();
		
		String query="insert into emp_leave values (?,?,?,?,?,?,?)";
		PreparedStatement p=con.prepareStatement(query);
		p.setString(1, leave_id);
		p.setString(2, leave_type);
		p.setString(3, startdate);
		p.setString(4, enddate);
		p.setString(5, status);
		p.setString(6, userid);
		p.setString(7, comment);
		int i=p.executeUpdate();
		return i;
		
	}

}
