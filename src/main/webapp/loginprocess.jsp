<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="packages.DbManager" %>
<%@ page import="packages.LoginDAO"%>
<jsp:useBean id="obj" class="packages.Login"/>
<jsp:setProperty property="*" name="obj"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login Process</title>
		<%
			boolean status=LoginDAO.validate(obj);
			if(status){
				out.println("You are successfully logged in");
				session.setAttribute("session","TRUE");
			}
			else
			{
				out.print("Sorry, email or password error");
		%>
			<jsp:include page="index.jsp"></jsp:include>
		<%
		}
		%>
	</head>
	<body>
		LOGIN PROCESS
	</body>
</html>



