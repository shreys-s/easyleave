package com.easyleave;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.net.*;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		  	//getting the values from the form to the servlet
		String empid=request.getParameter("empid");
		String empname=request.getParameter("empname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		
        	try {
	
        		//Connection con=DBConnection.getConnection();
				
				
				//String query="insert into emp_register values (?,?,?,?)";
				//PreparedStatement p=con.prepareStatement(query);
				
				//p.setString(1,empid);
				//p.setString(2,empname);
				//p.setString(3,email);
				//p.setString(4,pass);
				//p.executeUpdate();
				int p=EasyRegister.test(empid,empname,email,pass);

				out.println("<script>alert('Successfully Registered !!!')</script>");
				response.sendRedirect("login.jsp");
				
				
			} 
        	
        	catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			
        
	}

}
