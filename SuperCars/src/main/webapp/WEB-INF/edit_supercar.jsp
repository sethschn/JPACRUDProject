<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Super Car</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Editing ${supercar.name }</h1>
		<div align="left">
			<a href="home.do">Home</a> <a href="/admin">Admin</a>
			<a href="getSupercar.do?supercarid=${supercar.id}">Back to car</a>
		</div>
	</div>

	<div align="center">
		<table class="table table-hover">
			<form:form action="update" method="post" modelAttribute="supercar">
				<tr>
					<td>ID:</td>
					<td>${supercar.id}<form:hidden path="id" />
					</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><form:input path="name" size="50"/></td>
				</tr>
				<tr>
					<td>Top speed:</td>
					<td><form:input path="topSpeed" /></td>
				</tr>
				<tr>
					<td>Model year:</td>
					<td><form:input path="modelYear" /></td>
				</tr>
				<tr>
					<td>Engine:</td>
					<td><form:input path="engine" size="70" /></td>
					<%-- <td><form:textarea path="engine" rows="5" cols="19" /></td> --%>
				</tr>
				<tr>
					<td>Horsepower:</td>
					<td><form:input path="horsepower" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save"></td>
				</tr>
			</form:form>
		</table>
	</div>
	<div>
		<table>
			<tr>
		</table>
	</div>

</body>
</html>