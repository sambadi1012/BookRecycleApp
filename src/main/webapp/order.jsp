<%@page import="com.entity.Book_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookOrderImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<%@include file="all_components/allcss.jsp"%>
</head>
<body style="background-color: #ebe1f2;">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_components/navbar.jsp"%>

	<div class="container">
		<h3 class="text-center text-success p-2">Your Orders</h3>
		<table class="table table-striped mt-3">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order ID</th>
					<th scope="col">Name</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
				</tr>
			</thead>
			<tbody>

				<%
				User u = (User) session.getAttribute("userobj");
				BookOrderImpl dao = new BookOrderImpl(DBConnect.getConn());
				List<Book_Order> blist = dao.getBook(u.getEmail());
				for (Book_Order b : blist) {
				%>
				<tr>
					<th scope="row"><%=b.getOrderId()%></th>
					<td><%=b.getUsername()%></td>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getPaymentType()%></td>
				</tr>

				<%
				}
				%>


			</tbody>
		</table>
	</div>
</body>
</html>