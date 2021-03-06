<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/resources/images/" var="images"></spring:url>
<%@include file ="contextpath.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



</head>
<body>
	<nav class="navbar navbar-expand-sm bg navbar  "> <a
		class="navbar-brand" href="${contextPath}/admin/adminindex">Shoppy</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse  justify-content-end"
		id="collapsibleNavbar">
		<marquee> <h6>Welcome Shoppy</h6></marquee>
		<ul class="navbar-nav">

		
		</ul>
	</nav>

	<nav class="navbar navbar-expand-md bg-info navbar-info sticky-top ">

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse justify-content-end"
		id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link text-white"
				href="${contextPath}/admin/adminindex">Home</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle  text-white" href="#"
				id="navbardrop" data-toggle="dropdown"> Electronics </a>
				<div class="dropdown-menu">
					<c:forEach items="${electronics}" var="electronic">
						<a class="dropdown-item"
							href="${contextPath}/adminproducts/${electronic.subCategory_id}">${electronic.subCategory_name}</a>
					</c:forEach>
				</div></li>


			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#" id="navbardrop"
				data-toggle="dropdown"> Men </a>
				<div class="dropdown-menu">
					<c:forEach items="${mens}" var="men">
						<a class="dropdown-item"
							href="${contextPath}/adminproducts/${men.subCategory_id}">${men.subCategory_name}</a>
					</c:forEach>
				</div></li>


			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#" id="navbardrop"
				data-toggle="dropdown"> Women </a>
				<div class="dropdown-menu">
					<c:forEach items="${womens}" var="women">
						<a class="dropdown-item"
							href="${contextPath}/adminproducts/${women.subCategory_id}">${women.subCategory_name}</a>
					</c:forEach>
				</div></li>


			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-white" href="#" id="navbardrop"
				data-toggle="dropdown"> Home Appliances</a>
				<div class="dropdown-menu">
					<c:forEach items="${homeAppliances}" var="homeappliance">
						<a class="dropdown-item"
							href="${contextPath}/adminproducts/${homeappliance.subCategory_id}">${homeappliance.subCategory_name}</a>
					</c:forEach>
				</div></li>

			<li class="nav-item"><a class="nav-link  text-white"
				href="vendordetails">Vendors</a></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle  text-white" href="#"
				id="navbardrop" data-toggle="dropdown"> My Account</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="${contextPath}/admin/adminprofile">My
						profile</a> 
						<a class="dropdown-item"
						href="${contextPath}/admin/logout"> Logout</a>
				</div></li>

		</ul>
	</div>
	</nav>
</body>
</html>