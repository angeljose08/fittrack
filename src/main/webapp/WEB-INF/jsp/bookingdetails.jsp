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
	background-color: #FE9801; 
	margin: 0; 
	padding: 0; 
} 
</style>
<meta charset="windows-1256">
<title>Booking Details</title>
</head>
<body>
	<h1>Booking Details</h1>
	 <form:form action="save-bookingdetails" method="get" modelAttribute="booking">
	 	<div>
	 		<label for="userid">User id:</label>
	 		<input type="text" id="user id" name="userid"><br><br>
	 	</div>
	 	<div>
	 		<label for="username">Username:</label>
	 		<input type="text" id="username" name="username"><br><br>
	 	</div>
	 	<div class="form-group">
	 		<label for="typeofclass">Type of class :</label>
	 		<input type="text" id="typeofclass" name="typeofclass"><br><br>
	 	</div>
	 	<div>
	 		<label for="bookingstatus">Booking status:</label>
	 		<input type="text" id="bookingstatus" name="bookingstatus"><br><br>
	 	</div>
	 	<div class="form-group">
	 		<input type="submit" value="Submit">
	 	</div>
	 </form:form>
	<p><a href="/">Back to Home</a></p>
</body>
</html>