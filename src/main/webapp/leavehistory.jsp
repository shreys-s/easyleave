<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave History</title>
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
<%@ page import="com.easyleave.EasyLeaveHistory" %>

<header>
			<a href="welcome.jsp"><h1>Easy Leave</h1></a><a href="Logout"><h3 style="position:absoute;left:80%;">Logout</h3></a>
			<h2 align="center">Leave History</h2>
		</header>
<% HttpSession sess=request.getSession();
		if(sess.getAttribute("name")==null){
			response.sendRedirect("login.jsp");
		}
		%>
<%


HttpSession sessi=request.getSession();
String userid=(String) sessi.getAttribute("name");
ResultSet rs=EasyLeaveHistory.test(userid);

if(!rs.next()){
	
	out.println("Soryy Not Applied for any leave");
}


else{
	
	
	%>
	<section>
		<div id="section1">
	 <table border="1" align="center" style="position:absolute;top:19%;" >
	
	 <tr> 
	 <th> Leave ID </th>
	  <th> Leave Type</th> 
	  <th> Start Date</th> 
	  <th>End Date</th> 
	  <th>Status</th> 
	  <th> Remarks</th> 
	 </tr> 
	 
	 <% while(rs.next()){ %>
	 
	  <tr>
	  <td><%= rs.getString(1) %></td> 
	  
	 <td><%= rs.getString(2) %></td>
	 
	  <td><%= rs.getString(3) %></td>
	  
	  <td><%= rs.getString(4) %></td>
	  
	 <td><%= rs.getString(5) %></td>
	 
	 <td><%= rs.getString(7) %></td> 
	 </tr> <% } %>
	  <% } %> </table> 

</div>
		</section>
		<footer>
		
		Copyright &copy All Rights Reserved 2016
		</footer>
</body>
</html>