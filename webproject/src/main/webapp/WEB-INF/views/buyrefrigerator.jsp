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
	margin: 30px;
}

.body .form {
	margin: 20px;
}
</style>

</head>
<body>
	<%@include file="defaultcustomerindex.jsp"%>
	<div class="body">
		<div style="flex: 2">
			<img alt="image" style="width: 250px"
				src='<spring:url value="/resources/images/products/${refrigerator.product_id }.jpg"></spring:url>'>
		</div>
		<table>
			<tbody>

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


			</tbody>
		</table>

		<form action="${contextPath }/customer/addtocart" method="get">
			<table>
				<tbody>
					<tr>
						<td>Product Id</td>
						<td><input type="hidden" name="product_id"
							value="${refrigerator.product_id}" /></td>
					</tr>
					<tr>
						<td>Enter number of products</td>
						<td><input type="number" name="noOfProducts"></td>
					</tr>

					<tr>
						<td><input type="submit" value="Buy now"></td>
					</tr>
				</tbody>
			</table>
		</form>

	</div>
	<%-- <%@include file="footer.jsp"%> --%>
</body>
</html>