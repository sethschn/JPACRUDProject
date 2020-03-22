<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Supercars R us</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
<h1>Super Cars Index.jsp</h1>

<ul>
<c:forEach var="x" items="${supercar}">
  <li><a href="getSupercar.do?supercarid=${x.id}">${x.name}</li>
</c:forEach>
</ul>

</body>
</html> --%>

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
    <h2>Super Car Manager index.jsp</h2>
    <form method="get" action="getSupercar.do">
        <input type="text" name="supercarid" /> &nbsp;
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
                &nbsp;&nbsp;&nbsp;
                <a href="/delete?id=${car.id}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>   
</body>
</html>