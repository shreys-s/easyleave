package com.easyleave;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.net.*;

public class EasyLogin {
	
	public static ResultSet test() throws URISyntaxException, SQLException{
		Connection con=DBConnection.getConnection();
		Statement stm=con.createStatement();
		String query="select * from emp_register";
		ResultSet rs=((java.sql.Statement) stm).executeQuery(query);
		return rs;
		
	}

}