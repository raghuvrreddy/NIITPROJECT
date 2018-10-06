<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="contextpath.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>subcategories</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->
</head>
<body>

	<%@include file="defaultvendorindex.jsp"%>
	
	<form action="${contextPath}/vendor/getModel" method="post">
		<div class="form-group">
			<label for="sel1">SubCategories</label> <select class="form-control "
				id="sel1" name="subCategory_id">
				<c:forEach items="${subCategoryList}" var="subcategory">
					<option value="${subcategory.subCategory_id}">${subcategory.subCategory_name}</option>

				</c:forEach>
			</select> <input type="submit" value="Go" />
		</div>
	</form>

</body>
</html>