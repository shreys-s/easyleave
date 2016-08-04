<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="login.css">
<title>Apply for Leave</title>
<style>
a:link    {color:gray; background-color:transparent; text-decoration:none}
a:visited {color:pink; background-color:transparent; text-decoration:none}
a:hover   {color:red; background-color:transparent; text-decoration:none}
a:active  {color:yellow; background-color:transparent; text-decoration:none}
</style>
</head>
<body>

		<header>
			<a href="welcome.jsp"><h1>Easy Leave</h1></a><a href="Logout"><h3 style="position:absoute;left:80%;">Logout</h3></a>
			<h2 align="center">Apply for leave</h2>
		</header>
		<% HttpSession sess=request.getSession();
		if(sess.getAttribute("name")==null){
			response.sendRedirect("login.jsp");
		}
		%>
		<section>
		<div id="section1">
		<form method="post" action="leaveApp">
			<table align ="center" cellpadding="2" cellspacing="40">
			
					<tr>
					
						<td>
						Leave type
						</td><td> <select name="type">
						<option>Planned Leave</option>
						<option>Sick/Casual leave</option>
						 </td>
					
					</tr>
					<tr>
					
						<td>
						Start Date
						</td><td> <input type="date" name="startdate" required> </td>
					
					</tr>
					<tr>
					
						<td>
						End Date
						</td><td> <input type="date" name="enddate" required> </td>
					
					</tr>
					<tr>
						<td>
						Comment
						</td><td> <input type="text" name="comment" required> </td>
					
					</tr>
					<tr>
						<td>
						</td><td>  <select name="status" style="display:none;">
						<option selected="selected">Pending</option>
						<option>Approved</option>
						<option>Rejected</option>
						</select> </td>
					
					</tr>
					<tr>
					
						<td> <input type="submit" name="Submit" value="Apply"> </td>
						<td> <input type="reset" name="Reset" value="Reset"> </td>
					</tr>
					
			</table>
		</form>
		
		</div>
		</section>
		<footer>
		
		Copyright &copy All Rights Reserved 2016
		</footer>
</body>
</html>