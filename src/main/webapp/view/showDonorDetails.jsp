<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Donor Details</title>
</head>
<body>
	<table align="center" border="1" bordercolor="red">

		<tr>

			

			<td>Name</td>

			<td>Mail</td>

			<td>Mobile</td>

			<td>Blood Group</td>

			<td>State</td>
			
			<td>City</td>
			
			<td>Pincode</td>
			
			<td>Gender</td>

		</tr>



		<tr>
			

			<td>${registration.name}</td>

			<td>${registration.mail}</td>

			<td>${registration.mobile}</td>

			<td>${registration.blood}</td>

			<td>${registration.state}</td>
			
			<td>${registration.city}</td>
			
			<td>${registration.pincode}</td>
			
			<td>${registration.gender}</td>

		</tr>

	</table>
</body>
</html>