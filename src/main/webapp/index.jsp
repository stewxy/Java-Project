<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="packages.DbManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	DbManager db = new DbManager();
	Connection conn = db.getConnection();
	if(conn == null){
		out.print("Connection Failed");
	}
	else{
		out.print("Connection Succeeded");
	}
	
%>
 Hello World
<a href="login.jsp">login</a>
<a href="logout.jsp">logout</a>
<a href="profile.jsp">profile</a>
</body>
</html>