<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="createAudible.do" method="GET">
Name: <input type="text" placeholder="name" name="name"><br>
Author: <input type="text" placeholder="author" name="author"><br>
Narrator: <input type="text" placeholder="narrator" name="narrator"><br>
Length: <input type="text" placeholder="HH:MM" name="length"><br>
Release Date: <input type="text" placeholder="YYYY-MM-DD" name="releaseDate"><br>
Release Year: <input type="text" placeholder="YYYY" name="releaseYear"><br>
Categories: <input type="text" placeholder="categories" name="categories"><br>
Description: <input type="text" placeholder="description" name="description"><br>
Book Image URL: <input type="text" placeholder="URL" name="bookImage"><br>
<input type="submit" value="Create Audible">

</form>

</body>
</html>
