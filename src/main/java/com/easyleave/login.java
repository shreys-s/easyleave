package com.easyleave;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.*;

import java.sql.*;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public login() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String Empid=getP
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String Empid=request.getParameter("empid");
		String pass2=request.getParameter("pass");
		
		//out.println(Empid);
		//out.println(pass);
		//DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		
		try {
			
			//Connection con=DBConnection.getConnection();
			//Statement stm=con.createStatement();
			//String query="select * from emp_register";
			//ResultSet rs=((java.sql.Statement) stm).executeQuery(query);
			ResultSet rs=EasyLogin.test();
			while(rs.next())
			{
				//out.println(rs.getString(1));
				//out.println(rs.getString(4));

				String userid=rs.getString(1);
				String pass3=rs.getString(4);

				if(Empid.equals(userid) &&  pass2.equals(pass3))
				{
					
					HttpSession session=request.getSession();
					session.setAttribute("name", userid);
					out.println("Login Successful");
					response.sendRedirect("welcome.jsp");

					
				}
				else{
					int count=1;
					if(count==1){
					//out.println("Invalid Credentials");
					out.println("<script>alert('Enter The Correct Credentials')</script>");
					request.getRequestDispatcher("login.jsp").include(request,response);
					}
					count++;
				}
				
			}
			
		}
			
		  catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}

}
