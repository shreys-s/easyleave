<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="home.css">
<title>Easy Leave</title>
<style>
a:link    {color:gray; background-color:transparent; text-decoration:none}
a:visited {color:pink; background-color:transparent; text-decoration:none}
a:hover   {color:red; background-color:transparent; text-decoration:none}
a:active  {color:yellow; background-color:transparent; text-decoration:none}
</style>
</head>
<body>

<header>
			<h1>Easy Leave</h1> <a href="Logout"><h3 style="position:absoute;left:80%;">Logout</h3></a>
		</header>
		<% HttpSession sess=request.getSession();
		if(sess.getAttribute("name")==null){
			response.sendRedirect("login.jsp");
		}
		%>
		<section>
		<div id="section1">
		
		<a href="newleave.jsp" >
		<h2 align="center">Apply for Leave<h1>
		</a>
		
		<a href="leavehistory.jsp" >
		<h2 align="center">Leave History<h1>
		</a>
		
		
		</div>
		
		</section>
		<footer>
		
		Copyright &copy All Rights Reserved 2016
		</footer>
</body>
</html>