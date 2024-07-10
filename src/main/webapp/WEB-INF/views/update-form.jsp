<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="./base.jsp"%>
</head>
<body>
	<div class="container mt-5">
		<h2 class="text-center">Change Product Details</h2>
		<form action="${pageContext.request.contextPath }/handle-product" method="post">
		
		<input type="hidden" value="${product.id }" name="id"/>
			<div class="form-group">
				<label for="productName">Product Name</label> <input type="text"
					class="form-control" id="productName" name="name"
					value="${product.name }">
			</div>
			<div class="form-group">
				<label for="productDescription">Product Description</label>
				<textarea class="form-control" id="productDescription" rows="3"
					name="description" >${product.description }</textarea>
			</div>
			<div class="form-group">
				<label for="productPrice">Price</label> <input type="number"
					class="form-control" id="productPrice" name="price"
					value="${product.price }">
			</div>
			<div class="container text-center">
			<a href="${pageContext.request.contextPath }/">
					<button type="button" class="btn btn-outline-dark mr-2 p-5px">Back</button>
				</a>
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
				
			

		</form>
	</div>

</body>
</html>