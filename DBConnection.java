	package com.easyleave;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;
	import java.net.*;
	 
	public class DBConnection {
	 
	    public static Connection getConnection() {
			Connection con = null;
			try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    con = DriverManager.getConnection(System.getenv("defaultConnection"));	
			}
		    
			catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				
			catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
		return con;
		}
	    
	}