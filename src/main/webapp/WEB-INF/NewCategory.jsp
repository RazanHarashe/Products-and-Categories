<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Category</title>
</head>
<body>

<h1>New Category</h1>
<p><a href="/">Home</a></p>
<hr>

<form:form action="/categories/new" method="post" modelAttribute="category">

	<table>
	    <thead>
	    	<tr>
	            <td class="float-left">Name:</td>
	            <td class="float-left">
	            	<form:errors path="name" class="text-danger"/>
					<form:input class="input" path="name"/>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan=2><input class="input" class="button" type="submit" value="Submit"/></td>
	        </tr>
	    </thead>
	</table>
</form:form>
</body>
</html>