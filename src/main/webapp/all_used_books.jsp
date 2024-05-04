<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Recent Books</title>
<%@include file="all_components/allcss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #e9ffc9;
}
</style>
</head>
<body>
	<%@ include file="all_components/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">

			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getAllUsedBooks();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="bookimage/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookname()%></p>
						<p><%=b.getAuthor()%></p>
						
							<div class="row ml-5">
								<a href="view_books.jsp?id=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-1">View Details</a><a href=""
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
</body>
</html>