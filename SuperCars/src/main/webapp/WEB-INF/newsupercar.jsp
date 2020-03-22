<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Super Car</title>
</head>
<body>
    <div align="center">
        <h2>New Super Car</h2>
        <form:form action="save" method="post" modelAttribute="supercar">
            <table border="0" cellpadding="5">
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Engine: </td>
                    <td><form:input path="engine" /></td>
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