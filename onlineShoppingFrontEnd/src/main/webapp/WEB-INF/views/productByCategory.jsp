<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- JQuery plugins for datable --> 
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">

<script type="text/javascript">
	$(function(){
    	$("#categoryTable").dataTable({
    		"lengthMenu":[[5,7,-1],[5,7,"All"]],
    		
    	})
  	})
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Watch-IT!!!-{title}</title>
</head>
<body>
	<div class="container">
		</br></br>
		<div class="row">
			<div class="col-lg-12"> <!-- breadcrumb for displaying all products -->
				<c:if test="${userClickCategory == true}">
					<nav aria-label="breadcrumb">
  						<ol class="breadcrumb">
    						<li class="breadcrumb-item"><a href="${contextRoot }/home">Home</a></li>
    						<li class="breadcrumb-item active" aria-current="/all/listProducts">Products</li>
  						</ol>
					</nav>
				</c:if>
				
				<!-- breadcrumb for displaying products according to category -->
			</div>
			<div class="col-lg-3">
          		<!-- Sidebar -->
          		<%@ include file="./MasterPage/Sidebar.jsp" %>
        	</div>
        	<div class="col-lg-9">
        		<h3>List Of Products</h3>
				<div class="table-responsive">
					<table id="categoryTable" class="table table-hover table-bordered">
						<thead>
						<tr>
							<th>ID</th>
							<th></th>
							<th>Name</th>
							<th>Category</th>
							<th>Brand</th>
							<th>Price</th>
							<th>Actions</th>
						</tr>
						</thead>
						<c:forEach var="p" items="${productByCategory}">
						<tbody>
						<tr>
							<td>${p.id }</td>
							<td><img src="<c:url value='/resources/images/${p.id }.jpg'></c:url>" height="120px" width="120px"></td>
							<td>${p.productName}</td>
							<td>${p.category.categoryname}</td>
							<td>${p.productBrand}</td>
							<td><i class="fas fa-rupee-sign"></i> ${p.productPrice}</td>
							<td>
							<a href="${contextRoot}/getproductinfo/${p.id}"><i class="fas fa-info-circle"></i></a> 
							<a href="${contextRoot }/getproduct/${p.id}"><i class="fas fa-pencil-alt"></i></a>
							<a href="${contextRoot}/deleteproduct/${p.id}"><i class="fas fa-trash-alt"></i></a>
							</td>
						</tr>	
						</tbody>
					</c:forEach>
					</table>
				</div>	
			</div>	
			
		</div>	
	</div>
	
	
</body>
</html>