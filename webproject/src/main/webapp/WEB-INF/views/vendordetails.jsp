<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="springtag"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>
<body>

	<h1>Deactivated</h1>
	<table class="table">
		<thead>
			<tr>
				<th>vendor-id</th>
				<th>vendor_name</th>
				<th>vendor_email</th>
				<th>vendor_mobile</th>
				<th>company_name</th>
				<th>status</th>
				<th>Activate/Deactivate</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${vendorList}" var="vendor">
				<c:if test="${venodr.status == false}">
					<tr>
						<td><c:out value="${vendor.vendor_id }"></c:out></td>
						<td><c:out value="${vendor.vendor_name }"></c:out></td>
						<td><c:out value="${vendor.vendor_email}"></c:out></td>
						<td><c:out value="${vendor.vendor_mobile}"></c:out></td>
						<td><c:out value="${vendor.company_name}"></c:out></td>
						<td><c:out value="${vendor.status }"></c:out></td>
						<td><a href="accept/${vendor.vendor_id }"><input
								type="button" value="Activate"></a></td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>


	<h1>Activated</h1>

	<table class="table">
		<thead>
			<tr>
				<th>vendor-id</th>
				<th>vendor_name</th>
				<th>vendor_email</th>
				<th>vendor_mobile</th>
				<th>company_name</th>
				<th>status</th>
				<th>Activate/Deactivate</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${vendorList}" var="vendor">
				<c:if test="${venodr.status == true}">
					<tr>
						<td><c:out value="${vendor.vendor_id }"></c:out></td>
						<td><c:out value="${vendor.vendor_name }"></c:out></td>
						<td><c:out value="${vendor.vendor_email}"></c:out></td>
						<td><c:out value="${vendor.vendor_mobile}"></c:out></td>
						<td><c:out value="${vendor.company_name}"></c:out></td>
						<td><c:out value="${vendor.status }"></c:out></td>
						<td><a href="reject/${vendor.vendor_id }"><input
								type="button" value="Deactive"></a></td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>