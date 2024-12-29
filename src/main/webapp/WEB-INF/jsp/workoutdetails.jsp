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
	background-color: #EB4D55; 
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
<title>Workout Details</title>
</head>
<body>
	<div class="form-container">
		<h1>Workout Details</h1>
		<form:form action="/save-workoutdetails" method="get" modelAttribute="workout">
			<div>
				<label for="userid">User id :</label>
				<input type="text" id="user id" name="userid"><br><br>
			</div>
			<div>
				<label for="workoutname">Workout name:</label>
				<input type="text" id="workoutname" name="workoutname"><br><br>
			</div>
			<div>
				<label for="workouttype">Workout type:</label>
				<input type="text" id="workouttype" name="workouttype"><br><br>
			</div>
			<div>
				<label for="workoutplan">Workout plan:</label>
				<input type="text" id="workoutplan" name="workoutplan"><br><br>
			</div>
			<div>
				<label for="aimofworkout">Aim of workout:</label>
				<input type="text" id="aimofworkout" name="aimofworkout"><br><br>
			</div>
			<div class="form-group"> 
					<input type="submit" value="Submit"> 
			</div>
		</form:form>
		<p><a href="/">Back to Home</a></p>
	</div>
</body>
</html>