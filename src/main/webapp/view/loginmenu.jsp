<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>Welcome back...  </h2> 
	<br>
	<br>

	<!-- <div class="col-12">
		<button type="submit" class="btn btn-outline-primary"
			onclick="view/getByBloodGroup.jsp">Search</button>
	</div>
	<div class="col-12">
		<button type="submit" class="btn btn-outline-primary"
			onclick="/loginmenu">Update Profile</button>
	</div>
 -->




	<a href="view/getByBloodGroup.jsp">Search By Blood Group</a>
	
	
	

	<a href="update/${mail}">Update Profile</a>

</body>
</html>