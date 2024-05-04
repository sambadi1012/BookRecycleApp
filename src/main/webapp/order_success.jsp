<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body style="background-color: white;">
	<%@ include file="all_components/navbar.jsp"%>

	<div class="container mt-5 mb-5">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4 text-center">
				<i class="fa-solid fa-circle-check fa-5x text-success"></i>
				<h1>Thank You</h1>
				<h2>Your Order received Successfully</h2>
				<h5>You will get your Order within 7 days</h5>
				<a href="homepage.jsp" class="btn btn-primary mt-3">Home</a><a
					href="order.jsp" class="btn btn-danger mt-3 ml-1">View
					Order</a>
			</div>
		</div>
	</div>
</body>
</html>