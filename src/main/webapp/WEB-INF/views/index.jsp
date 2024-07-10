<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
</head>

<body>


	<div class="container mt-3">
		<div class="row">

			<div class="col-md-12">
				<h1 class="text-center">Welcom to Product App</h1>
				<table class="table mt-3">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">NAME</th>
							<th scope="col">DESCRIPTION</th>
							<th scope="col">PRICE</th>
							<th scope="col">ACTION</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td>&#8377;${p.price }</td>
								<td><a href="delete-product/${p.id }"><i
										class="fa-solid fa-trash mr-5"></i></a> <a
									href="update/${p.id }"><i class="fa-solid fa-pen"></i></a>

								</td>


							</tr>
						</c:forEach>
					</tbody>
				</table>


				<div class="container text-center">

					<a href="add-product" class="btn btn-primary ">Add Product</a>
				</div>
			</div>
		</div>

	</div>
</body>


</html>
