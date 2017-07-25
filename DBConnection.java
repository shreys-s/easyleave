	package com.easyleave;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;
	import java.net.*;
	 
	public class DBConnection {
	 	String host = System.getenv("db_host");
		String database = System.getenv("db_name");
		String user = System.getenv("db_user");
		String password = System.getenv("db_pass");
		
	    public static Connection getConnection() {
			Connection con = null;
			try {
			
			String url = String.format("jdbc:mysql://%s/%s", host, database);

			// Set connection properties.
			Properties properties = new Properties();
			properties.setProperty("user", user);
			properties.setProperty("password", password);
			properties.setProperty("useSSL", "true");
			properties.setProperty("verifyServerCertificate", "true");
			properties.setProperty("requireSSL", "false");
				
			Class.forName("com.mysql.jdbc.Driver");
		    	con = DriverManager.getConnection(System.getenv(url, properties));	
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
