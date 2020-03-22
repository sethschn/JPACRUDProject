<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Supercar</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center">
  <h1>${supercar.name }</h1>
	<div align="left">
		<a href="home.do">Home</a>
		<a href="/edit?id=${supercar.id}">Edit</a>
	</div>
</div>

<div class="container" align="center">
  <div class="row">
    <div class="col-sm-4">
<!--       <h3>Column 1</h3>
      <p>Lorem ipsum dolor..</p> -->
    </div>
    <div class="col-sm-4">
		<p class="text-left">Top speed: ${supercar.topSpeed }</p>
		<p class="text-left">Model year: ${supercar.modelYear }</p>
		<p class="text-left">Engine: ${supercar.engine}</p>
		<p class="text-left">Horsepower: ${supercar.horsepower }</p>
    </div>
    <div class="col-sm-4">
<!--       <h3>Column 3</h3>
      <p>Lorem ipsum dolor..</p> -->
    </div>
  </div>
</div>
</body>
</html>
<%-- 	<div align="center">
		<div>
			<a href="home.do">Home</a>
			<a href="/edit?id=${supercar.id}">Edit</a>
		</div>
		<div class="container-flud" align="center">
			<h3>Super Car ${supercar.name }</h3>
			<p>Top speed: ${supercar.topSpeed }</p>
			<p>Model year: ${supercar.modelYear }</p>
			<p>Engine: ${supercar.engine}</p>
			<p>Horsepower: ${supercar.horsepower }</p>
		</div>
	</div> --%>