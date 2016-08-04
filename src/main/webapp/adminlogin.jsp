<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="login.css">
<title>Admin Login</title>
</head>
<body>

		<header>
			<h1>Easy Leave</h1>
			<h2 align="center">Admin Login</h2>
		</header>
		<section>
		<div id="section1">
		<form name="myForm" method="post" action="adminlogin" >
			<table align ="center" cellpadding="2" cellspacing="40">
					<tr>
					
						<td>
						Admin Id
						</td><td> <input type="number" name="adminid" placeholder="eg:60068068"  required> </td>
					
					</tr>
					<tr>
					
						<td>
						Password
						</td><td> <input type="password" name="pass" placeholder="eg:********"  required> </td>
					
					</tr>
					<tr>
					
						<td> <input type="submit" name="submit" value="Login"> </td>
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