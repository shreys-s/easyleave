package com.easyleave;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.*;

@WebServlet("/leaveApp")
public class leaveApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public leaveApp() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		//out.println("ttesting123..");
		response.setContentType("text/html");
		
		
		//getting the parameters
		
		String leave_id=leaveid.next();
		String leave_type=request.getParameter("type");
		String startdate=request.getParameter("startdate");
		String enddate=request.getParameter("enddate");
		String comment=request.getParameter("comment");
		String status=request.getParameter("status");
		
        HttpSession session=request.getSession();
        String userid=(String) session.getAttribute("name");
        
        
        try {
			
        	//Connection con=DBConnection.getConnection();
        	//Statement stm=con.createStatement();
			
			//String query="insert into emp_leave values (?,?,?,?,?,?,?)";
			//PreparedStatement p=con.prepareStatement(query);
			//p.setString(1, leave_id);
			//p.setString(2, leave_type);
			//p.setString(3, startdate);
			//p.setString(4, enddate);
			//p.setString(5, status);
			//p.setString(6, userid);
			//p.setString(7, comment);
			//p.executeUpdate();
			int i=EasyLeaveApp.test(leave_id, leave_type, startdate, enddate, status, userid, comment);
			
			response.sendRedirect("welcome.jsp");
			out.println("The Status is Updated");
			
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
