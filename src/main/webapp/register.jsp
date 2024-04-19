<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection, packages.DbManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>
	<form action="registerprocess.jsp">
		<input type="text" name="username" value="Name..." onclick="this.value=''"/><br/>
		<input type="password" name="password"  value="Password..." onclick="this.value=''"/><br/>
		<input type="submit" value="register"/>
	</form>
</body>
</html>