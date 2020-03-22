<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SuperCar Manager</title>
</head>
<body>
<div align="center">
    <h2>Super Car index.jsp</h2>
    <p>Search by ID</p>
    <form method="get" action="getSupercar.do">
        <input type="text" name="supercarid" value="Search By ID" />
        <input type="submit" value="Submit text" />
    </form>
    <h3><a href="/new">New Super Car</a></h3>
    <table border="1" cellpadding="5">
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
            <td>
                <a href="/edit?id=${car.id}">Edit</a>
                <a href="/delete?id=${car.id}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>