<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spring:form>
		<table>

			<tr>
				<td>Name:</td>
				<td>${vendorDetails.vendor_name}</td>
			</tr>
			<tr>
				<td>Email:</td>
				<td>${vendorDetails.vendor_mobile}</td>

			</tr>

			<tr>
				<td>Mobile:</td>
				<td>${vendorDetails.vendor_email}</td>

			</tr>

			<tr>
				<td>Company Name:</td>
				<td>${vendorDetails.company_name}</td>

			</tr>

			<tr>
				<td>role:</td>
				<td>${vendorDetails.status}</td>

			</tr>


		</table>


	</spring:form>
</body>
</html>