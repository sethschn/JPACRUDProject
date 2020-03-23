<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Super Car</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>New Super Car</h1>
		<div align="left">
			<a href="home.do">Home</a> <a href="/admin">Admin</a>
		</div>
	</div>
    <div align="center">
        <form:form action="save" method="post" modelAttribute="supercar">
            <table class="table table-hover">
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Engine: </td>
                    <td><form:input path="engine" size="70" /></td>
                </tr>
                <tr>
                    <td>Top Speed: </td>
                    <td><form:input path="topSpeed" /></td>
                </tr>
                <tr>
                    <td>Model year: </td>
                    <td><form:input path="modelYear" /></td>
                </tr>    
                <tr>
                    <td>Horsepower: </td>
                    <td><form:input path="horsepower" /></td>
                </tr>    
                <tr>
                    <td colspan="2"><input type="submit" value="Save"></td>
                </tr>                    
            </table>
        </form:form>
    </div>
</body>
</html>