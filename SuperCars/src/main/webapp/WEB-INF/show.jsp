<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Supercar</title>
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
		<h1>${supercar.name }</h1>
		<div align="left">
			<a href="home.do">Home</a> <a href="/edit?id=${supercar.id}">Edit</a>
		</div>
	</div>
	<div class="container">
		<table class="table">
			<tr>
				<td><img src="images/${supercar.image}"></td>
				<td><h3 class="text-left">Top speed: ${supercar.topSpeed }</h3>
					<h3 class="text-left">Model year: ${supercar.modelYear }</h3>
					<h3 class="text-left">Engine: ${supercar.engine}</h3>
					<h3 class="text-left">Horsepower: ${supercar.horsepower }</h3></td>
			</tr>
		</table>
	</div>
</body>
</html>