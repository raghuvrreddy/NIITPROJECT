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
				src='<spring:url value="/resources/images/products/${laptop.product_id }.jpg"></spring:url>'>
		</div>
		<table>
			<tbody>

				<tr>
				<td>product_brand:</td>
				<td>${laptop.product_brand}</td>
			</tr>
			<tr>
				<td>laptopName:</td>
				<td>${laptop.laptopName }</td>
			</tr>
			<tr>
				<td>harddisk:</td>
				<td>${laptop.harddisk }</td>
			</tr>
			<tr>
				<td>ram:</td>
				<td>${laptop.ram}</td>
			</tr>
			<tr>
				<td>processor:</td>
				<td>${laptop.processor }</td>
			</tr>
			<tr>
				<td>product_price:</td>
				<td>${laptop.product_price }</td>
			</tr>


			</tbody>
		</table>

		<form action="${contextPath }/customer/addtocart" method="get">
			<table>
				<tbody>
					<tr>
						<td>Product Id</td>
						<td><input type="hidden" name="product_id"
							value="${laptop.product_id }" /></td>
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