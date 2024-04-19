<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection, packages.DbManager, packages.LoginDAO" %>
<jsp:useBean id="obj" class="packages.User"/>
<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<title>Login Process</title>
		<%
			boolean status=LoginDAO.validate(obj);
			if(status){
				
				
				%>
				<jsp:include page="profile.jsp"></jsp:include> 
				<% 
				out.println("You are successfully logged in");
				
				session.setAttribute("session","TRUE");
				
				String username =request.getParameter("username");
				session.setAttribute("user",username);
			}
			else
			{
				
		%>
			<jsp:include page="index.jsp"></jsp:include>
		<%
			out.print("Sorry, email or password incorrect");
			}
		%>
	</head>
	<body>
	</body>
</html>



