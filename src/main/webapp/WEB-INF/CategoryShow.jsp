<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show Category</title>
</head>
<body>

<h1>${category.name}</h1>
<p><a href="/">Home</a></p>
<hr>

<h3>Products:</h3>
<ul>
	<c:forEach var="product" items="${assignedProducts}">
		<li><c:out value="${product.name}"></c:out></li>
	</c:forEach>
</ul>
<hr>
<form action="/categories/${id}" method="post">
	<h4>Add Product:</h4>				
	<select name="productId" id="productId" class="input">
	    <c:forEach var="product" items="${unassignedProducts}">
	    	<option value="${product.id}">${product.name}</option>
	    </c:forEach>
	</select>
	<input class="input" class="button" type="submit" value="Add"/>
</form>
</body>
</html>