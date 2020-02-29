<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="mainStyle.css">
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
<meta charset="UTF-8">
<title>Update Audible Content</title>
</head>
<body>
<!-- <form action="update.do" method="POST">
<input type="hidden" name="id" value="${audible.id}">
Name: <input type="text" placeholder="name" name="name" value="${audible.name}"><br>
Author: <input type="text" placeholder="author" name="author" value="${audible.author}"><br>
Narrator: <input type="text" placeholder="narrator" name="narrator" value="${audible.narrator}"><br>
Length: <input type="text" placeholder="HH:MM" name="length" value="${audible.length}"><br>
Release Date: <input type="text" placeholder="YYYY-MM-DD" name="releaseDate" value="${audible.releaseDate }"><br>
Categories: <input type="text" placeholder="categories" name="categories" value="${audible.categories}"><br>
Description: <input type="text" placeholder="description" name="description"><br>
Book Image URL: <input type="text" placeholder="URL" name="bookImage" value="${audible.bookImage }"><br>
<input type="submit" value="Update Audible"> -->

<div class="card text-white bg-dark mb-3" id="cardStyle">
    <div class="card-header">Create</div>
    <div class="card-body">
      <h5 class="card-title">Audible Content</h5>
      <table>
        <form action="update.do" method="POST">
        <tr>
            <td> <label>Name</label> <input type="text" placeholder="name" name="name" value="${audible.name}"></td>
        </tr>
        <tr>
          <td>
            <label>Author</label><input type="text" placeholder="author" name="author" value="${audible.author}">
          </td>
        </tr>
        <tr>
          <td>
            <label>Narrator</label>
            <input type="text" placeholder="narrator" name="narrator" value="${audible.narrator}">
          </td>
        </tr>
        <tr>
          <td>
            <label>Length</label>
            <input type="text" placeholder="HH:MM" name="length" value="${audible.length}">
          </td>
        </tr>
        <tr>
          <td>
            <label>Release Date</label>
            <input type="text" placeholder="YYYY-MM-DD" name="releaseDate" value="${audible.releaseDate }">
          </td>
        </tr>
        <tr>
          <td>
            <label>Categories</label>
            <input type="text" placeholder="categories" name="categories" value="${audible.categories}">
          </td>
        </tr>
        <tr>
          <td>
            Description
            <input type="text" placeholder="description" name="description">
          </td>
        </tr>
        <tr>
          <td>
            Book Image URL
            <input type="text" placeholder="URL" name="bookImage" value="${audible.bookImage }">
          </td>
        </tr>
        <tr>
          <td>
            <input type="submit" value="Update Audible">
      </td>
        </tr>
  </form>
      </table>
      </p>
    </div>
  </div>
</form>

</body>
</html>
