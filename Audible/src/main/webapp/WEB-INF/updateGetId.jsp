<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="mainStyle.css" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />
    <meta charset="UTF-8" />
    <title>Grab Film To Update</title>
  </head>
  <body>
    <div class="card text-white bg-dark mb-3" id="cardStyle">
      <div class="card-header"></div>
      <div class="card-body">
        <h5 class="card-title">Audible</h5>
       <tr>
           <td>
            <form action="getId.do" method="GET">
           </td>
       </tr>
       <tr>
           <td>
            <label>ID</label>
            <input type="number" placeholder="enter a number" name="id" />
           </td>
       </tr>
       <tr>
           <td>
            <input type="submit" value="Create Audible" />
        </form>
           </td>
       </tr>
      </div>
    </div>
    <!-- <form action="getId.do" method="GET">
      ID: <input type="number" placeholder="enter a number" name="id" /><br />

      <input type="submit" value="Create Audible" />
    </form> -->
  </body>
</html>
