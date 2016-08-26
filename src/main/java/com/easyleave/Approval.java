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

@WebServlet("/Approval")
public class Approval extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Approval() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String status=request.getParameter("status");
		String lid=request.getParameter("lid").toString();
		
		//out.println(status);	
		//out.println(lid);
		       
        try {
			
        	//Connection con=DBConnection.getConnection();
			//Statement stm=con.createStatement();
	        
			//PreparedStatement pinki=con.prepareStatement("update emp_leave set status=? where leave_id=?");
			
			//pinki.setString(1,status);
			//pinki.setString(2, lid);
			
			//pinki.executeUpdate();
			int p=EasyApproval.test(status,lid);
			response.sendRedirect("approval.jsp");
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
