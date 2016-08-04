<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave Approval</title>
<link rel="stylesheet" type="text/css" href="table.css">
<style>
a:link    {color:gray; background-color:transparent; text-decoration:none}
a:visited {color:pink; background-color:transparent; text-decoration:none}
a:hover   {color:red; background-color:transparent; text-decoration:none}
a:active  {color:yellow; background-color:transparent; text-decoration:none}
th {
    background-color: #4CAF50;
    color: white;
}
tr:hover {background-color: #f5f5f5}
</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.easyleave.EasyApprovalJsp" %>
<header>
			<a href="adminwelcom.jsp"><h1>Easy Leave</h1></a><a href="Logout"><h3 style="position:absoute;left:80%;">Logout</h3></a>
			<h2 align="center">Leave Approval</h2>
		</header>
		<% HttpSession sess=request.getSession();
		if(sess.getAttribute("name")==null){
			response.sendRedirect("login.jsp");
		}
		%>
<%

//Connection con=DBConnection.getConnection();
//Statement stm=con.createStatement();

//out.println(userid);
//PreparedStatement p=con.prepareStatement("select emp_leave.EmpID, emp_leave.leave_id, emp_leave.leavetype, emp_register.EmpName, emp_leave.startdate, emp_leave.enddate, emp_leave.comment from emp_leave join emp_register on  emp_leave.EmpID=emp_register.EmpID where emp_leave.status=?");
//p.setString(1, "Pending");
//ResultSet rs=p.executeQuery();
ResultSet rs=EasyApprovalJsp.test();
//ResultSet rs1=stm.executeQuery("select * from emp_register");


if(!rs.next()){
	
	out.println("Soryy No Leave Request");
}


else{
	
	
	%>
	<section>
		<div id="section1">
	<form method="post" action="Approval">
	
	 <table border="1" align="center" style="position:absolute;top:19%;" >
	
	 <tr> 
	 <th> Leave ID </th>
	 <th> Employee ID </th>
	 <th> Employee Name </th>
	  <th> Leave Type</th> 
	  <th> Start Date</th> 
	  <th>End Date</th>  
	  <th> Remarks</th>
	 <th> Status</th> 
	  
	 </tr> 
	 
	 <% while(rs.next()){ %>
	 
	  <tr>
	  <td><input type="text" name="lid" value="<%= rs.getString(2) %>" size="30" readonly></td> 
	  
	 <td><%= rs.getString(1) %></td>
	 
	  <td><%= rs.getString(4) %></td>
	  
	  <td><%= rs.getString(3) %></td>
	  
	 <td><%= rs.getString(5) %></td>
	 
	 <td><%= rs.getString(6) %></td>
	 
	 <td><%= rs.getString(7) %></td> 
	 <td> 
	 <select name="status">
							
						<option>Approved</option>
						<option>Rejected</option></select>
						<input type="submit" value="Submit" /> </td>
</tr> <% } %>
	  <% } %> </table> 
	  	 </form>
</div>
		</section>
		<footer>
		
		Copyright &copy All Rights Reserved 2016
		</footer>
</body>
</html>