<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Audible Book</title>
<jsp:include page="styleTop.jsp" />
<link rel="stylesheet" href="mainStyle.css" />
</head>

<body>
	<header>
		<h1>Addicted to listening to Audibles</h1>
		<nav class="navbar navbar-dark bg-dark">
			<a class="link" href="gettocreate.do"> Create an Audible</a> <br /> <a
				class="link" href="gettoupdateId.do"> Update an Audible</a> <br /> <a
				class="link" href="getToDeleteId.do"> Delete Audible</a>
		</nav>
	</header>

	<main class="container">
 		<div>
<h2>In 2017 I learrned what an audible was i downloaded one book and then finishedit within days so i downloaded aanother and another and with that love for learning
I have created a collection of books.</h2>
		</div>
		<div class="card-column"
			style="display: flex; justify-content: space-evenly; flex-wrap: wrap; margin-top: 1690px;">
			<c:forEach items="${audibles}" var="audible">
						<div class="" style="max-width: 200px; max-height: 200px; border: 5px; padding: 5px;">
							<img src="${audible.bookImage}" class="card-img" alt="...">
						</div>
			</c:forEach>
		</div>
	</main>
	<footer>
		<p>Project by Matt Aldrete</p>
	</footer>
</body>
</html>
