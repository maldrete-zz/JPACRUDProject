<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audible Book</title>
</head>
<body>
<%-- <h1>Audible Home Page</h1>
<h3>${Audible.name}{Audible.author}</h3>
<h2>${Audible.description}</h2> --%>

<a href="gettocreate.do">Create an Audible</a><br>
<a href="gettoupdateId.do">Update an Audible</a><br>
<a href="getToDeleteId.do">Delete Audible</a>

<h1>This is my home page</h1>

		<c:forEach var="audible" items="${audibles}">
		<table>
		<tr>
		<td>${audible.name}
		<td>${audible.author}</td>
		<td>${audible.description}</td>
		</tr>
		</table>

			<br>

		</c:forEach>
</body>
</html>