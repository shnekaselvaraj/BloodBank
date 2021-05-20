
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/bgstyle.css">
</head>
<body>

	<nav class="navbar navbar-inverse" style="background-color: black;">



		<ul class="nav navbar-nav">
			<li><a class="navbar-brand" href="#">Blood Bank</a></li>
			<li><a href="#"><div class="glyphicon glyphicon-user"></div>
					Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<li><a href="#"><div class="glyphicon glyphicon-info"></div>
					&#8505; INFO</a></li>
			<li><a href="#"><div class="glyphicon glyphicon-log-out"></div>
					Logout</a></li>
		</ul>
		</div>
	</nav>

	
<div class="bg-image"></div>

	<div class="bg-text">
	<form:form action="/saveupdate" modelAttribute="uuser">
		<table align="center">
			<tr >
			
				<td >User Name :</td>
				<td ><form:input path="name" /></td>
			</tr>
			<tr>
				<td>User Mail :</td>
				<td><form:input path="mail" /></td>
			</tr>
			<tr>
				<td>User Mobile :</td>
				<td><form:input path="mobile" /></td>
			</tr>
			<tr>
				<td>User Blood :</td>
				<td><form:input path="blood" /></td>
			</tr>
			<tr>
				<td>User State :</td>
				<td><form:input path="state" /></td>
			</tr>
			<tr>
				<td>User City :</td>
				<td><form:input path="city" /></td>
			</tr>
			<tr>
				<td>User Gender :</td>
				<td><form:input path="gender" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Update"></td>
				<td><input type="reset" value="Clear"></td>
			</tr>
		</table>
	</form:form>
	</div>
</body>
</html>
