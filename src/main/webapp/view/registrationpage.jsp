<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/simple.js"></script>
<script type="text/javascript" src="/js/cities.js"></script>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="/css/bgstyle.css">

</head>
<body onload="createCaptcha()">



	<div class="bg-image"></div>

	<div class="bg-text">

		<h1 style="font-size: 30px">You May Become a Savior...</h1>
		<form class="row g-3" action="submitForm"
			modelAttribute="registration">
			<div class="col-md-6">
				<label for="name" class="form-label">Name</label> <span>*</span> <input
					type="text" class="form-control" name="name" path="name" required>
			</div>
			<div class="col-md-6">
				<label for="mail" class="form-label">Email</label> <span>*</span> <input
					type="email" class="form-control" name="mail" path="mail"
					placeholder="abc@example.com" required>
			</div>

			<div class="col-6">
				<label for="mobile" class="form-label">Contact</label> <span>*</span>
				<input type="text" class="form-control" name="mobile" path="mobile"
					required>
			</div>
			<div class="col-6">
				<label for="inputAddress" class="form-label">Blood Type</label> <span>*</span>
				<select class="form-select" aria-label="Default select example"
					name="blood" path="blood" required>
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
				</select>
			</div>
			<div class="col-6">
				<label for="inputAddress" class="form-label">State</label> <span>*</span>
				<!-- <select class="form-select" aria-label="Default select example"
					name="state" path="state" required>
					
				</select> -->
				<select onchange="print_city('state', this.selectedIndex);" id="sts"
					name="state" path="state" class="form-control" required></select>
			</div>
			<div class="col-6">
				<label for="city" class="form-label">City</label> <span>*</span>
				<!-- <input
					type="text" class="form-control" name="city" path="city"> -->
				<select id="state" name="city" class="form-control" path="city"
					required></select>
				<script language="javascript">
					print_state("sts");
				</script>
			</div>

			<div class="col-md-6">
				<label for="password" class="form-label">Password</label> <span>*</span>

				<a href="#" data-toggle="popover"
					title="At least 8 charactersâ??the more characters, the better.
A mixture of both uppercase and lowercase letters.
A mixture of letters and numbers.
Inclusion of at least one special character, e.g., ! @ # ? ] Note: do not use < or >"
					data-content="Some content inside the popover">&#9888;</a> <input
					type="password" class="form-control" name="password"
					placeholder="Must be of 8 characters or more">

			</div>
			<div class="col-md-6">
				<label for="cpassword" class="form-label">Confirm Password</label> <span>*</span>
				<input type="password" class="form-control" name="confirmPassword">
			</div>
			<div class="col-6">
				<label for="inputAddress" class="form-label">Gender</label> <span>*</span>
				<select class="form-select" aria-label="Default select example"
					name="gender" path="gender" required>
					<option selected>Gender</option>
					<option value="female">Female</option>
					<option value="male">Male</option>
					<option value="others">Others</option>
				</select>
			</div>
			<div class="form-floating">
				<textarea class="form-control"
					placeholder="Specify your health issues if you have..."
					name="issues" style="height: 80px"></textarea>
				<label for="floatingTextarea2">Comments</label>
			</div>

			<div class="col-4">
				<div class="form-check form-switch">
					<input class="form-check-input" type="checkbox"
						id="flexSwitchCheckDefault" required> <label
						class="form-check-label" for="flexSwitchCheckDefault">
						Confirm The Information </label>
				</div>
			</div>
			<div class="col-8"></div>
			<div class="col-12">
				<div id="captcha"></div>
				<input type="text" placeholder="Captcha" id="cpatchaTextBox"
					required />
				<p id="capverify"></p>
				<button onclick="validateCaptcha()">verify</button>
			</div>
			<div class="col-2">
				<button type="submit" class="btn btn-outline-info">Sign in</button>
			</div>
			<div class="col-4">
				<button type="clear" class="btn btn-outline-secondary"
					onclick="Home.html">Clear</button>
			</div>
		</form>
	</div>


	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover();
		});
	</script>
</body>
</html>