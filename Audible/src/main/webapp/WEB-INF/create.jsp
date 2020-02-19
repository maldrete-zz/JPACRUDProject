<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Create Page</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="card text-white bg-dark mb-3" style="max-width: 45em;display: flex;justify-content: center;margin: auto;margin-top: 100px;">
      <div class="card-header">Header</div>
      <div class="card-body">
        <h5 class="card-title">Dark card title</h5>
        <table>
          <form action="createAudible.do" method="GET">
          <tr>
              <td> <label>Name</label> <input type="text" placeholder="name" name="name" /></td>
          </tr>
          <tr>
            <td>
              <label>Author</label><input type="text" placeholder="author" name="author" />
            </td>
          </tr>
          <tr>
            <td>
              <label>Narrator</label>
              <input type="text" placeholder="narrator" name="narrator" />
            </td>
          </tr>
          <tr>
            <td>
              <label>Release Year</label>
              <input type="text" placeholder="YYYY" name="releaseYear" />
            </td>
          </tr>
          <tr>
            <td>
              <label>Release Date</label>
              <input type="text" placeholder="YYYY-MM-DD" name="releaseDate" />
            </td>
          </tr>
          <tr>
            <td>
              <label>Categories</label>
              <input type="text" placeholder="categories" name="categories" />
            </td>
          </tr>
          <tr>
            <td>
              Description:
              <input type="text" placeholder="description" name="description" />
            </td>
          </tr>
          <tr>
            <td>
              Book Image URL:
              <input type="text" placeholder="URL" name="bookImage" />
            </td>
          </tr>
          <tr>
            <td>
          <input type="submit" value="Create Audible" />
        </td>
          </tr>
    </form>
        </table>
        </p>
      </div>
    </div>
    <!-- <form action="createAudible.do" method="GET">
      Name: <input type="text" placeholder="name" name="name" /><br />
      Author: <input type="text" placeholder="author" name="author" /><br />
      Narrator:
      <input type="text" placeholder="narrator" name="narrator" /><br />
      Length: <input type="text" placeholder="HH:MM" name="length" /><br />
      Release Date:
      <input type="text" placeholder="YYYY-MM-DD" name="releaseDate" /><br />
      Release Year:
      <input type="text" placeholder="YYYY" name="releaseYear" /><br />
      Categories:
      <input type="text" placeholder="categories" name="categories" /><br />
      Description:
      <input type="text" placeholder="description" name="description" /><br />
      Book Image URL:
      <input type="text" placeholder="URL" name="bookImage" /><br />
      <input type="submit" value="Create Audible" />
    </form> -->
  </body>
</html>
