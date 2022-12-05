<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="mainStyles.css">
	<script src="mainScript.js"></script>
	
</head>
<body>

	<h1>Login Page</h1>
	<form action="LoginServlet" method="post">
		User Name <input type="text" name="username" placeholder="Enter your username"><br>
		Password <input type="password" name="password" placeholder="Enter your password"><br>
		<input type="submit" name="submit" value="Login">
	</form>

</body>
</html>