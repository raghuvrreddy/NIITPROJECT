<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@include file="contextpath.jsp"%>


<html>
<head>

<title>Products</title>

<style type="text/css">
.body {
	display: flex;
}

.body table {
	margin: 50px;
}

.body .row {
	padding: 20px;
}
</style>

</head>
<body>
	<%@include file="defaultadminindex.jsp"%>
	<div class="body">
		<div style="flex: 2">
			<img alt="image" style="width: 250px"
				src='<spring:url value="/resources/images/products/${refrigerator.product_id }.jpg"></spring:url>'>
		</div>
		<table>

			<tr>
				<td>Product Brand:</td>
				<td>${refrigerator.product_brand }</td>
			</tr>
			<tr>
				<td>Name:</td>
				<td>${refrigerator.name }</td>
			</tr>
			<tr>
				<td>Capacity:</td>
				<td>${refrigerator.capacity }</td>
			</tr>
			<tr>
				<td>Color:</td>
				<td>${refrigerator.color}</td>
			</tr>

		</table>
		<div class="container" style="margin: 30px">
			<div class="row">

				<a href="${contextPath}/buyproducts/${refrigerator.product_id}"><button
						class="btn btn-danger">Buy</button></a>
			</div>
		</div>
	</div>
</body>
</html>