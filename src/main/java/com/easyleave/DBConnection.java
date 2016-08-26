	package com.easyleave;
	import java.io.FileInputStream;
	import java.io.FileNotFoundException;
	import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;
	import java.util.Properties;
	import java.net.*;
	public class DBConnection {
		
		public static Connection getConnection() throws URISyntaxException, SQLException {
		    //URI dbUri = new URI(System.getenv("DATABASE_URL"));
			URI dbUri = new URI(System.getenv("DATABASE_URL"));
		    String username = dbUri.getUserInfo().split(":")[0];
		    String password = dbUri.getUserInfo().split(":")[1];
		    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
		    return DriverManager.getConnection(dbUrl, username, password);
		}
	    public static void main (String args[]){
	    	//Connection con=DBConnection.getConnection();
	    	
	    }
	}


