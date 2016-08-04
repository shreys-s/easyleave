<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="login.css">
<title>Register</title>
</head>
<body>

		<header>
			<a href="index.html" style="text-decoration:none"><h1 >Easy Leave</h1></a>
			<h2 align="center">USER REGISTERATION</h2>
		</header>
		<section>
		<div id="section1">
		<form method="post" action="register">
			<table align ="center" cellpadding="2" cellspacing="40">
			
					<tr>
					
						<td>
						Employee Id
						</td><td> <input type="number" name="empid" placeholder="eg:60068068"  required> </td>
					
					</tr>
					<tr>
					
						<td>
						Employee Name
						</td><td> <input type="text" name="empname" placeholder="eg:Example"  required> </td>
					
					</tr>
					<tr>
					
						<td>
						Employee Email
						</td><td> <input type="email" name="email" placeholder="eg:example@emp.com"  required> </td>
					
					</tr>
					<tr>
						<td>
						Password
						</td><td> <input type="password" name="pass" placeholder="eg:********"  required> </td>
					
					</tr>
					<tr>
					
						<td> <input type="submit" name="Submit" value="Register"> </td>
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