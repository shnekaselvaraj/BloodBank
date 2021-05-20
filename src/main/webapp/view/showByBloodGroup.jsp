<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>Donor Details</h2>
		
		<table border="1">
			<tr>
			
				<td><b>User Name</b></td>
				<td><b>User Mail</b></td>
				<td><b>User Mobile</b></td>
				<td><b>User Blood Group</b></td>
				<td><b>User State</b></td>
				<td><b>User City</b></td>
				<td><b>User Gender</b></td>
				

			</tr>
			<c:forEach items="${user}" var="user">
				<tr>
					<td><c:out value="${user.name}"></c:out></td>
					<td><c:out value="${user.mail}"></c:out></td>
					<td><c:out value="${user.mobile}"></c:out></td>
					<td><c:out value="${user.blood}"></c:out></td>
					<td><c:out value="${user.state}"></c:out></td>
					<td><c:out value="${user.city}"></c:out></td>
					<td><c:out value="${user.gender}"></c:out></td>
					

				</tr>
			</c:forEach>
		</table>
		<div>${msg}</div>

	</center>
</body>
</html>