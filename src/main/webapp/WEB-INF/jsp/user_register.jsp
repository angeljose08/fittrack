<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<style>
body { 
	font-family: Arial, sans-serif; 
	background-color: #4D80E4; 
	margin: 0; 
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
<title>Register form </title>
</head>
<body>
	<h2>Register User</h2>
	<div class="form-container"> 
		<form:form action="/save-user" method="post" modelAttribute="user"> 
			<div class="form-group"> 
				<label for="username">Username</label> 
				<form:input type="text" id="username" path="username" placeholder="Enter Username" /> <br><br>
			</div> 
			<div class="form-group"> 
				<label for="age">Age</label> 
				<form:input type="text" id="age" path="age" placeholder="Enter Age" /> <br><br>
			</div>  
			<div class="form-group"> 
				<label for="password">Password</label> 
				<form:input type="password" id="password" path="password" placeholder="Enter Password" /> <br><br>
			</div>
			<div class="form-group"> 
				<input type="submit" value="Submit"> 
			</div> 
		</form:form> 
	</div>
</body>
</html>