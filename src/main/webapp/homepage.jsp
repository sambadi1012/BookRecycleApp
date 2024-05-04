<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOOK RECYCLE: Home Page</title>
<%@include file="all_components/allcss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/bg2.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #e9ffc9;
}
</style>
</head>
<body style="background-color: white;">

	<%
  	User u=(User)session.getAttribute("userobj");
    %>


	<%@ include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center">
			<i class="fa-solid fa-book"></i> Book Recycle Management System
		</h2>
	</div>
	<br>
	<hr>
	<!-- recent books -->

	<div class="container">
		<h3 class="text-center">Recent Books</h3>
		<div class="row">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getRecentBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="bookimage/<%=b.getPhotoName()%>"
							style="width: 120px; height: 170px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							<%
							if (b.getEmail().equals("admin")) {
							%>
						
						<div class="row">

							<%
							if(u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>

							<%
							}
							%>
							<a
								href="view_books.jsp?id=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ">View Details</a> <a href=""
								class="btn btn-danger btn-sm "><i
								class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>
						</p>
						<div class="row">
							<a href="view_books.jsp?id=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm "><i
								class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
						<%
						}
						%>
					</div>
				</div>
			</div>

			<%
			}
			%>

		</div>

		<div class="text-center mt-3">
			<a href="all_recent_books.jsp"
				class="btn btn-danger btn-sm text-white"> View All </a>
		</div>

	</div>


	<!-- ends recycle books -->
	<br>
	<hr>
	<!-- admin uploaded books -->
	<div class="container">
		<h3 class="text-center">New Books</h3>
		<div class="row">
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="bookimage/<%=b.getPhotoName()%>"
							style="width: 120px; height: 170px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>

						<div class="row">
						
						<%if(u == null){
						%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
						<% 
						} else{
						%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
								
						<%
						}
						%>
								
								<a href="view_books.jsp?id=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-1">View Details</a>
								
								<a href=""class="btn btn-danger btn-sm "><i
								class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
						</div>

					</div>
				</div>
			</div>

			<%
			}
			%>


		</div>
		<div class="text-center mt-3">
			<a href="all_new_books.jsp" class="btn btn-danger btn-sm text-white">
				View All </a>
		</div>

	</div>
	<!-- end admin uploaded books -->
	<br>
	<hr>
	<!-- user uploaded books -->
	<div class="container">
		<h3 class="text-center">Used Books</h3>
		<div class="row">
			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getUsedBook();
			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="bookimage/<%=b.getPhotoName()%>"
							style="width: 120px; height: 170px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						<div class="row">
							<a href="view_books.jsp?id=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm "><i
								class="fa-solid fa-indian-rupee-sign"></i><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>




		</div>



	</div>
	<!-- end user uploaded books -->

	<div class="text-center mt-3">
		<a href="all_used_books.jsp" class="btn btn-danger btn-sm text-white">
			View All </a>
	</div>

	</div>

	<%@include file="all_components/footer.jsp"%>

</body>
</html>