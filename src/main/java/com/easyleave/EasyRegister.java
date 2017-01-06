package com.easyleave;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EasyRegister {
	public static int test(String empid, String empname, String email, String pass) throws SQLException{
		
		Connection con=DBConnection.getConnection();
		
		String query="insert into emp_register values (?,?,?,?)";
		PreparedStatement p=con.prepareStatement(query);
		
		p.setString(1,empid);
		p.setString(2,empname);
		p.setString(3,email);
		p.setString(4,pass);
		int i= p.executeUpdate();
		con.close();
		return i;
	
	}
}
