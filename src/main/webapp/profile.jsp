<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="css/profile.css">
		<title>Profile</title>
	</head>
	
	<body>
		<h1 id="heading">
			Welcome
		</h1>
		<div id="userName">
			<%
				String name=(String)session.getAttribute("user");
				out.print(name);
			%><br/>
		</div>
	</body>
</html>