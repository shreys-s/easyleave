package com.easyleave;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.net.*;

public class EasyApprovalHistory {
	public static ResultSet test() throws URISyntaxException, SQLException{
		Connection con=DBConnection.getConnection();
		Statement stm=con.createStatement();
		PreparedStatement p=con.prepareStatement("select * from emp_leave where status=? OR status=?");
		p.setString(1, "Approved");
		p.setString(2, "Rejected");
		ResultSet rs=p.executeQuery();
		con.close();
		return rs;
		

}
}
