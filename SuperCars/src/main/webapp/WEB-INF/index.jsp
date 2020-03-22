<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Super Car List</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
  <h1>Super Car Home</h1>
	<div align="left">
		<a href="home.do">Home</a>
		<a href="/admin">Admin</a>
	</div>
</div>
	<div class="container">
		<form method="get" action="getSupercar.do">
		<label for="supercarid">Search by ID</label>
			<input type="text" name="supercarid" value="1"/> <input
				type="submit" value="Search" />
		</form>
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Engine</th>
				<th>Top Speed</th>
				<th>Model Year</th>
				<th>Horsepower</th>
			</tr>
			<c:forEach items="${supercar}" var="car">
				<tr>
					<td>${car.id}</td>
					<td><a href="getSupercar.do?supercarid=${car.id}">${car.name}</td>
					<td>${car.engine}</td>
					<td>${car.topSpeed}</td>
					<td>${car.modelYear}</td>
					<td>${car.horsepower}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>