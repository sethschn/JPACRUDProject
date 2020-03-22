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
<div class="jumbotron text-center">
  <h1>${supercar.name }</h1>
  <p>Resize this responsive page to see the effect!</p>
	<div>
		<a href="home.do">Home</a>
		<a href="/edit?id=${supercar.id}">Edit</a>
	</div>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
<!--       <h3>Column 1</h3>
      <p>Lorem ipsum dolor..</p> -->
    </div>
    <div class="col-sm-4">
		<p>Top speed: ${supercar.topSpeed }</p>
		<p>Model year: ${supercar.modelYear }</p>
		<p>Engine: ${supercar.engine}</p>
		<p>Horsepower: ${supercar.horsepower }</p>
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