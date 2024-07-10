<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Add Product</h2>
    <form action="handle-product" method="post">
        <div class="form-group">
            <label for="productName">Product Name</label>
            <input type="text" class="form-control" id="productName" name="name" placeholder="Enter product name">
        </div>
        <div class="form-group">
            <label for="productDescription">Product Description</label>
            <textarea class="form-control" id="productDescription" rows="3" name="description" placeholder="Enter product description"></textarea>
        </div>
        <div class="form-group">
            <label for="productPrice">Price</label>
            <input type="number" class="form-control" id="productPrice" name="price" placeholder="Enter price">
        </div>
        <center>
      <a href="${pageContext.request.contextPath }/">
            <button type="button" class="btn btn-outline-dark mr-2 p-5px">Back</button></a>
            <button type="submit" class="btn btn-primary">Submit</button>
         </center>   
       
    </form>
</div>

</body>
</html>