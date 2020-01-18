<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="update.do" method="POST">
<input type="hidden" name="id" value="${audible.id}">
Name: <input type="text" placeholder="name" name="name" value="${audible.name}"><br>
Author: <input type="text" placeholder="author" name="author" value="${audible.author}"><br>
Narrator: <input type="text" placeholder="narrator" name="narrator" value="${audible.narrator}"><br>
Length: <input type="text" placeholder="HH:MM" name="length" value="${audible.length}"><br>
Release Date: <input type="text" placeholder="YYYY-MM-DD" name="releaseDate" value="${audible.releaseDate }"><br>
Categories: <input type="text" placeholder="categories" name="categories" value="${audible.categories}"><br>
Description: <input type="text" placeholder="description" name="description"><br>
Book Image URL: <input type="text" placeholder="URL" name="bookImage" value="${audible.bookImage }"><br>
<input type="submit" value="Update Audible">


</form>

</body>
</html>
