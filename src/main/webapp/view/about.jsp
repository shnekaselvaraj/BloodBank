<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> home</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Right Aligned Navbar</h3>
  <p>The .navbar-right class is used to right-align navigation bar buttons.</p>
</div>
 <form:form action="/saveupdate" modelAttribute="uuser">
		<table align="center">
			<tr>
				<td>User Name :</td>
				<td><form:input path="name" /></td>
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
				<td> User City :</td>
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
</body>
</html>
