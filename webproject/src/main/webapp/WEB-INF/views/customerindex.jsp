<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/resources/images/" var="images"></spring:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

	<nav class="navbar navbar-expand-sm bg navbar justify-content-end ">

	<!-- Links -->
	<ul class="navbar-nav">

		<li class="nav-item"><a class="nav-link text-danger" href="supportpage">Support</a>
		</li>
		<li class="nav-item"><a class="nav-link text-danger" href="contactpage">Contact
				us</a></li>
	</ul>
	</nav>

	<nav class="navbar navbar-expand-md bg  navbar"> <a
		class="navbar-brand  text-white" href="#">Shoppy</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse  justify-content-end"
		id="collapsibleNavbar">
		<ul class="navbar-nav">

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-danger" href="#"
				id="navbardrop" data-toggle="dropdown"> My Account</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="customerprofile">My profile</a> <a
						class="dropdown-item" href="editcustomerprofile"> Edit Profile</a>

				</div></li>

		</ul>
	</div>
	</nav>

	<%@include file="navbar.jsp"%>

</body>
</html>