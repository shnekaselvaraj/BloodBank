<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="/search">
			Donor Blood Group :<select class="form-select" aria-label="Default select example"
					name="blood"  required>
					<option selected>Your type...</option>
					<option value="A+">A+</option>
					<option value="O+">O+</option>
					<option value="B+">B+</option>
					<option value="AB+">AB+</option>
					<option value="A-">A-</option>
					<option value="O-">O-</option>
					<option value="B-">B-</option>
					<option value="AB-">AB-</option>
					<option value="A1+">A1+</option>
				</select></br>
			</br> <input type="submit" value="Search Donor">

		</form>


	</center>
	<br>
	<br>
	



</body>
</html>