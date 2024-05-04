<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View: Book Details</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@ include file="all_components/navbar.jsp"%>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookById(id);
	%>


	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="bookimage/<%=b.getPhotoName()%>"
					style="height: 150px; width: 150px"><br>
				<h4 class="mt-3">
					Book Name: <span class="text-success"><%=b.getBookname()%></span>
				</h4>
				<h4>
					Author Name: <span class="text-success"><%=b.getAuthor()%></span>
				</h4>
				<h4>
					Price: <span class="text-success"><%=b.getPrice()%></span>
				</h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getBookname()%></h2>
				<%
				if (!"admin".equals(b.getEmail())) {
				%>
				<h5 class="text-primary">Contact to Seller</h5>
				<h5 class="text-primary">
					<i class="fa-solid fa-envelope"></i> Email:
					<%=b.getEmail()%></h5>
				<%
				}
				%>

				<div class="row">
					<div class="col-md-4 text-danger p-2">
						<i class="fa-solid fa-hand-holding-dollar fa-3x"></i>
						<p>Cash on Delivery</p>
					</div>
					<div class="col-md-4 text-danger p-2">
						<i class="fa-solid fa-arrow-rotate-left fa-3x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger p-2">
						<i class="fa-solid fa-truck-moving fa-3x"></i>
						<p>Free Delivery</p>
					</div>

				</div>
				<%
				if (!"admin".equals(b.getEmail())) {
				%>
				<div class="text-center p-3">
					<a href="homepage.jsp" class="btn btn-success"><i
						class="fa-solid fa-bag-shopping"></i> Continue Shopping</a> <a href=""
						class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
				</div>
				<%
				} else {
				%>

				<div class="text-center p-3">
					<a href="" class="btn btn-primary"><i
						class="fa-solid fa-cart-plus"></i>Add Cart</a> <a href=""
						class="btn btn-danger"><i
						class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
				</div>

				<%
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>