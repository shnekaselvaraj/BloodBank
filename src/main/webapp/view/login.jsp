<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/bgstyle.css">
</head>
<body>



	<div class="bg-image-login"></div>

	<div class="bg-text-login">


		<form class="row g-3" modelAttribute="login" action="loginProcess"
			method="post">
			<div class="col-md-3">
				<label for="userName" class="form-label">Email</label>
			</div>
			<div class="col-md-7">
				<input type="email" class="form-control" name="mail" path="mail"
					placeholder="abc@example.com" required>
			</div>
			<div class="col-md-3">
				<label for="password" class="form-label">Password</label>
			</div>
			<div class="col-md-7">
				<input type="password" class="form-control" name="password"
					path="password" required>
			</div>


			<div class="col-12">
				<button type="submit" class="btn btn-outline-primary"
					onclick="/loginmenu">Login</button>
			</div>

			${message}

		</form>

	</div>

</body>
</html>