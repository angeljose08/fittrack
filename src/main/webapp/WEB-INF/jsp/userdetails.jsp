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
	background-color: #D89CF6; 
	margin: 0; 
	padding: 0; 
} 
.form-container { 
	background-color: #fff; 
	padding: 20px; 
	margin: 50px auto; 
	width: 50%; 
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
	border-radius: 8px; 
}
</style>
<meta charset="windows-1256">
<title>User Details</title>
</head>
<body>
	<h1>User Details</h1>
	<div class="form-container"> 
		<form:form action="/save-userdetails" method="get" modelAttribute="user">
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" id="username" name="username"><br><br>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password"><br><br>
			</div>
			<div class="form-group">
				<label for="age">Age:</label>
				<input type="text" id="age" name="age"><br><br>
			</div>
			<div class="form-group">
				<label for="height">Height:</label>
				<input type="text" id="height" name="height"><br><br>
			</div>
			<div class="form-group">
				<label for="weight">Weight:</label>
				<input type="text" id="weight" name="weight"><br><br>
			</div>
			<div class="form-group">
				<label for="goal">Fitnessgoal:</label>
				<input type="text" id="goal" name="goal"><br><br>
			</div>
			<div class="form-group"> 
				<input type="submit" value="Submit"> 
			</div>
		</form:form> 
	</div>
	<p><a href="/">Back to Home</a></p>
</body>
</html>