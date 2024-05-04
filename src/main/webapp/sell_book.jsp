<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Books</title>
<%@include file="all_components/allcss.jsp"%>

<script>
function fun(f)
{
    var be,sp,ce,bp,bc,d,msp;
    be=f.be.value;
    ce=f.ce.value;
    bp=f.bp.value;
    bc=f.bc.selectedIndex;
    d=ce-be;
    if(d<=5)
    {
        sp=bp-(bp*(d*3))/100;
        
    }
    else if(d<=10)
    {
        sp=bp-(bp*(d*5))/100;
        
    }
    else 
    {
        sp=bp-(bp*(d*7))/100;
        
    }

    switch(bc)
    {
        case 0: alert("please select book condition");
        break;
        case 1: msp=sp-(sp*5)/100;
        break;
        case 2:msp=sp-(sp*3)/100;
        break; 
        case 3:msp=sp-(sp*10)/100;
        break;
    }
   if(msp<=20){
	   alert("Book Cant be recycled");
   }
   else{
  f.price.value =Math.round(msp);  
   }
}
</script>
</head>
<body style="background-color: #ebe1f2;">
<c:if test="${empty userobj}">
<c:redirect url="login.jsp"/>
</c:if>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-4">
				<div class="card">
					<div class="card-body">
						<h5 class="text-center text-primary p-3">Sell Old Books</h5>
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						
						<form action="add_old_book" method="post"
							enctype="multipart/form-data">
							<input type="hidden" value="${userobj.email}" name="user">
							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label><input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Author Name*</label><input
									name="author" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Buying Price*</label><input
									name="bp" type="text" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp">
							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Book Edition</label><input
									name="be" type="number" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp">
							</div>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Current Edition</label><input
									name="ce" type="text" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Book Condition</label>
								<select id="inputState" name="bc" class="form-control" >
								<option selected>Select</option>
								<option>Mint</option>
								<option>Good</option>
								<option>Poor</option>
								</select>
							</div>
							
							
							<button type="button" class="btn btn-primary" onclick="fun(this.form)">Check Price</button>
							
							<div class="form-group">
								<label for="exampleInputPassword1">Maximum Selling Price</label><input
									name="price" type="text" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label><input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>

							<button type="submit" class="btn btn-primary">Sell</button>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>