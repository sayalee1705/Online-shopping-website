<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Link for icons -->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>

<title>Watch-IT!!! - ${title}</title>
</head>
<body>
	<div class="container">
		</br></br>
		<div class="row">
			<div class="col-lg-12">
				<nav aria-label="breadcrumb">
  					<ol class="breadcrumb">
    					<li class="breadcrumb-item"><a href="${contextRoot }/home">Home</a></li>
    					<li class="breadcrumb-item active" aria-current="/all/listproducts">Products</li>
  					</ol>
				</nav>
			</div>
			<div class="col-lg-3">
          		<!-- Sidebar -->
          		<%@ include file="./MasterPage/Sidebar.jsp" %>
        	</div>
        	<div class="col-lg-9">
        		<h3>List Of Products</h3>
				<div class="table-responsive">
					<table class="table table-hover table-bordered">
						<tr>
							<th>ID</th>
							<th>Product Name</th>
							<th>Product Price</th>
							<th>Actions</th>
						</tr>
						<tr>
							<c:forEach var="p" items="${productList}">
							<td>${p.id }</td>
							<td>${p.productName}</td>
							<td>${p.productPrice}</td>
							<td>
							<a href="${contextRoot}/getproductinfo/${p.id}"><i class="fas fa-info-circle"></i></a>&nbsp; 
							<a href=""><i class="fas fa-pencil-alt"></i></a>&nbsp;
							<a href=""><i class="fas fa-trash-alt"></i></a>
							</td>
							</c:forEach>
						</tr>	
					</table>
				</div>	
			</div>	
		</div>	
	</div>
	
</body>
</html>