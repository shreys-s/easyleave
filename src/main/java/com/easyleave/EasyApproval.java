package com.easyleave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class EasyApproval {
	public static int test(String status, String lid) throws SQLException{
	Connection con=DBConnection.getConnection();
	Statement stm=con.createStatement();
    
	PreparedStatement p=con.prepareStatement("update emp_leave set status=? where leave_id=?");
	
	p.setString(1,status);
	p.setString(2, lid);
	
	int i=p.executeUpdate();
	return i;
	}

}
