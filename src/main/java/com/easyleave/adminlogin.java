package com.easyleave;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.*;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public adminlogin() {
        super();

    }
        
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String adminid=request.getParameter("adminid");
		String pass2=request.getParameter("pass");
		//out.println(adminid);
		//out.println(pass2);
		
        try {
			
			//Connection con=DBConnection.getConnection();
			//Statement stm=con.createStatement();
			//String query="select * from admin";
			//ResultSet rs=((java.sql.Statement) stm).executeQuery(query);
			ResultSet rs=EasyAdminLogin.test();
			while(rs.next())
			{
				//out.println(rs.getString(1));
				//out.println(rs.getString(2));

				String userid=rs.getString(1);
				String pass3=rs.getString(2);

				if(adminid.equals(userid) &&  pass2.equals(pass3))
				{
					HttpSession session=request.getSession();
					session.setAttribute("name",adminid);
					out.println("Login Successful");
					response.sendRedirect("adminwelcom.jsp");

					
				}
				else{
					
					int count=1;
					if (count==1){
					//out.println("Invalid Credentials");
					out.println("<script>alert('Enter The Correct Credentials')</script>");
					request.getRequestDispatcher("adminlogin.jsp").include(request,response);
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
