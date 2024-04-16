<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection, packages.DbManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="registerprocess.jsp">
		UserName: <input type="text" name="username"/><br/><br/>
		Password: <input type="password" name="password"/><br/><br/>
		<input type="submit" value="register"/>
	</form>
</body>
</html>