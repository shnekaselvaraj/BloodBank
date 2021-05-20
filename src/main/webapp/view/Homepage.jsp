<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<title>Blood Donation</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
	font-family: "Montserrat", sans-serif
}

.fa-anchor, .fa-coffee {
	font-size: 200px
}

.w3-red, .w3-hover-red:hover {
	color: #fff !important;
	background-color: #ffa8a1 !important;
}

.w3-text-red, .w3-hover-text-red:hover {
	color: #bd817d85 !important;
}
</style>
<body>

	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-red w3-card w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red"
				href="javascript:void(0);" onclick="myFunction()"
				title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a> <a
				href="/homepage"
				class="w3-bar-item w3-button w3-padding-large w3-white">Home</a> <a
				href="/login"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Log-in</a>
			<a href="/register"
				class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Register</a>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
			<a href="/login" class="w3-bar-item w3-button w3-padding-large">Log-in</a>
			<a href="/register" class="w3-bar-item w3-button w3-padding-large">Register</a>

		</div>
	</div>

	<!-- Header -->
	<header class="w3-container w3-red w3-center"
		style="padding: 128px 16px">
		<h1 class="animate__animated animate__fadeInDown w3-margin w3-jumbo">Blood
			Management</h1>
		<p class="w3-xlarge">Nobody can do everything, but everyone can do
			something-BLOOD DONATION</p>
		<button
			class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get
			Started</button>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-twothird">
				<h1>Who are we?</h1>
				<h5 class="w3-padding-32">We welcome you to the most safest
					blood bank management. We are here to help you in finding with the
					blood donors of your needed blood group . And also this Blood
					management system have certain features that you can find even more
					easier than the usual blood bank ..</h5>

				<p class="w3-text-grey">We welcome you to the most safest blood
					bank management. We are here to help you in finding with the blood
					donors of your needed blood group . And also this Blood management
					system have certain features that you can find even more easier
					than the usual blood bank ..</p>
			</div>

			<div class="w3-third w3-center">
				<i class="fa fa-anchor w3-padding-64 w3-text-red"></i>
			</div>
		</div>
	</div>

	<!-- Second Grid -->
	<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
		<div class="w3-content">
			<div class="w3-third w3-center">
				<i class="fa fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>
			</div>

			<div class="w3-twothird">
				<h1>How can we help you?</h1>
				<h5 class="w3-padding-32">Making it much more easier for you to
					search donors , the searching can be done by two ways , either you
					can search in accordance with your nearby location with your blood
					group or you can also search just with the blood group , which
					returns you the entire list of donors on that particular blood
					group.</h5>

				<p class="w3-text-grey">Making it much more easier for you to
					search donors , the searching can be done by two ways , either you
					can search in accordance with your nearby location with your blood
					group or you can also search just with the blood group , which
					returns you the entire list of donors on that particular blood
					group.</p>
			</div>
		</div>
	</div>

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-xlarge">Quote of the day: Your droplets
			of blood may create an ocean of happiness.</h1>
	</div>

	<!-- Footer -->
	<footer class="w3-container w3-padding-64 w3-center w3-opacity">
		<div class="w3-xlarge w3-padding-32">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Powered by <a href="#" target="_blank">Help Trustee</a>
		</p>
	</footer>

	<script>
		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
	</script>

</body>
</html>
