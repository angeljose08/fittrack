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
	background-color: #6ba8a9; 
	margin: 0; 
	padding: 0; 
} 
h1 {
	text-align: center; 
	color: #343a40; 
}
.menu a{
		text-decoration:none;
		color:black;
		text-align: right;
} 
</style>
<meta charset="windows-1256">
<title>FitTrack Home</title>
</head>
<body>
	<h1>Welcome to FitTrack </h1>
	<div class="menu">
		<p><a href="login">Login</a> | <a href="user-register">Register</a></p>
		<p><a href="/userdetails">User Details</a></p> 
		<p><a href="/mealdetails">Meal Details</a></p> 
		<p><a href="/workoutdetails">Workout Details</a></p> 
		<p><a href="/bookingdetails">Booking Details</a></p>
	</div>
	<p>It is designed to help users track their fitness goals, monitor progress,and provide insights into their overall health. 
	Built with Spring Boot, this project offers a modern and scalable solution for fitness tracking by leveraging a variety of 
	features such as user authentication, and goal-setting tools.</p>
	<div class="gallery-item">
		<img src="image/fit.jpg" alt="fit" width="1600" height="600">
	</div>

</body>
</html>