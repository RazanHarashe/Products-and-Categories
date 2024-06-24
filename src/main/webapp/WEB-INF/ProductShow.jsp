<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show Product</title>
</head>
<body>

<h1>${product.name}</h1>
<p><a href="/">Home</a></p>
<hr>

<h3>Categories:</h3>
<ul>
	<c:forEach var="category" items="${assignedCategories}">
		<li><c:out value="${category.name}"></c:out></li>
	</c:forEach>
</ul>
<hr>
<form action="/products/${id}" method="post">
	<h4>Add Category:</h4>				
	<select name="categoryId" id="categoryId" class="input">
	    <c:forEach var="category" items="${unassignedCategories}">
	    	<option value="${category.id}">${category.name}</option>
	    </c:forEach>
	</select>
	<input class="input" class="button" type="submit" value="Add"/>
</form>
</body>
</html>