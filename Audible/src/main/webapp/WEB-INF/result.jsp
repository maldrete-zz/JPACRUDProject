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
			<td>${audible.name}${audible.author}</td>
		</tr>
		<tr>
			<td>${audible.narrator}${audible.length}</td>
		</tr>
		<tr>
			<td>${audible.releaseDate}${audible.categories}</td>
		</tr>
		<tr>
			<td>${audible.description}</td>
		</tr>


	</table>

	<%-- 				<div class="card text-white bg-dark mb-3" style="max-width: 100px; max-height:100px">
					<div class="row no-gutters">
						<div class="col-md-4">
							<img src="${audible.bookImage}" class="card-img" alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">${audible.name}</h5>
								<table>
									<tr>
										<td><label>Author</label>${audible.author}</td>
									</tr>
									<tr>
										<td><label>Narrator</label>${audible.narrator}</td>
									</tr>
									<tr>
										<td><label>Length</label>${audible.length}</td>
									</tr>
									<tr>
										<td><label>Release Date</label>${audible.releaseDate}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div> --%>

</body>
</html>

