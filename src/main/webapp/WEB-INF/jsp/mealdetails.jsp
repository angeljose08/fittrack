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
	background-color: #F6C3E5; 
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
<title>Meal Details</title>
<script> 
	function calculateTotalCalories() { 
		var breakfastCalorie = parseFloat(document.getElementById("breakfastcalorie").value) || 0; 
		var lunchCalorie = parseFloat(document.getElementById("lunchcalorie").value) || 0; 
		var dinnerCalorie = parseFloat(document.getElementById("dinnercalorie").value) || 0; 
		var totalCalorie = breakfastCalorie + lunchCalorie + dinnerCalorie; 
		document.getElementById("totalcalorie").value = totalCalorie; 
	} 
</script>
</head>
<body>
	<div class="container">
		<h1>Meal Details</h1>
		<form:form action="/save-mealdetails" method="get" modelAttribute="meal">
			<div>
				<label for="userid">User id:</label>
				<input type="text" id="user id" name="userid"><br><br>
			</div>
			<div>
				<label for="breakfast">Breakfast:</label>
				<input type="text" id="breakfast" name="breakfast"><br><br>
			</div>
			<div>
				<label for="breakfastcalorie">Breakfast calorie:</label>
				<input type="text" id="breakfastcalorie" name="breakfastcalorie"><br><br>
			</div>
			<div>
				<label for="lunch">Lunch:</label>
				<input type="text" id="lunch" name="lunch"><br><br>
			</div>
			<div>
				<label for="lunchcalorie">Lunch calorie:</label>
				<input type="text" id="lunchcalorie" name="lunchcalorie" oninput="calculateTotalCalories()"><br><br>
			</div>
			<div>
				<label for="dinner">Dinner:</label>
				<input type="text" id="dinner" name="dinner"><br><br>
			</div>
		
			<div>
				<label for="dinnercalorie">Dinner calorie:</label>
				<input type="text" id="dinnercalorie" name="dinnercalorie" oninput="calculateTotalCalories()"><br><br>
			</div>
		
			<div>
				<label for="totalcalorie">Total calorie:</label>
				<input type="text" id="totalcalorie" name="totalcalorie" readonly><br><br>
			</div>
			<div class="form-group">
				<input type="submit" value="Submit">
			</div>
		</form:form>
		<p><a href="/">Back to Home</a></p>
	</div>
</body>
</html>