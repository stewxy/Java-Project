<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection, packages.DbManager" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<title>Main Page</title>
	</head>
	<body>	
		<%
			Connection conn = DbManager.getConnection();
			if(conn == null){
				out.print("* Connection Failed *");
			}
			else{
				out.print("* Connection Succeeded *");
			}
			
		%>
		
		<br/>
		<br/>
		<a href="login.jsp">
				<button>LOGIN</button>
		</a>
		<a href="register.jsp">
				<button>REGISTER</button>
		</a>
		
		
		 
	</body>
</html>