<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection, packages.DbManager" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<title>Login Page</title>
	</head>
	<body>	
		<h1>Login</h1>
		
		<br/>
		<br/>
		<form action="loginprocess.jsp">
			UserName: <input type="text" name="username"/><br/><br/>
			Password: <input type="password" name="password"/><br/><br/>
			<input type="submit" value="login"/>
		</form>
		<a href="register.jsp">
				<button>register</button>
		</a>
		
		
		 
	</body>
</html>