<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Supercar</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
	<div>
		<a href="home.do">Home</a>
	</div>
	<div class="container-flud">
		<h3>Super car show.jsp</h3>
		<h5>Name: ${supercar.name}</h5>
		<p>Top speed: ${supercar.topSpeed }</p>
		<p>Model year: ${supercar.modelYear }</p>
		<p>Engine: ${supercar.engine}</p>
		<p>Horsepower: ${supercar.horsepower }</p>
	</div>
</body>
</html>