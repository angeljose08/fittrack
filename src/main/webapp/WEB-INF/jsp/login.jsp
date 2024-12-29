<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<style>
body { 
	font-family: Arial, sans-serif; 
	background-color: #F65C78; 
	margin: 0; 
	padding: 0; 
} 
.container { 
	background-color: #ffffff; 
	padding: 20px; 
	margin: 50px auto; 
	width: 50%; 
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
	border-radius: 8px; 
}
</style>
<meta charset="windows-1256">
<title>FitTrack Login</title>
</head>
<body>
	<div class="container">
		<h1>Login</h1>
		<form:form action="/login" method="get" modelAttribute="user">
			<div>
				<label for="username">Username:</label>
				<input type="text" id="username" name="username">
			</div>
			<div>
				<label for="password">Password:</label>
				<input type="password" id="password" name="password">
			</div>
			<div>
				<button type="submit">Login</button>
			</div>
		</form:form>
		<p><a href="/">Back to Home</a></p>
	</div>	
</body>
</html>