<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Audible Results</title>
</head>
<body>
<img alt="book cover" src="${audible.bookImage}">
<table>
<tr>
<td>${audible.name}  ${audible.author}	</td>
 </tr>
<tr>
<td>${audible.narrator}  ${audible.length}	</td>
 </tr>
<tr>
<td>${audible.releaseDate}  ${audible.categories}	</td>
 </tr>
<tr>
<td>${audible.description}</td>
 </tr>


</table>

</body>
</html>

