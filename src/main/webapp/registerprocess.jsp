<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection, packages.DbManager, packages.LoginDAO, packages.RegisterDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="packages.RegisterDAO"%>
	<jsp:useBean id="obj" class="packages.User"/>
	
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	int status=RegisterDAO.register(obj);
	if(status>0)
	out.print("You are successfully registered");
	
	%>
	</body>
</html>