<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>
<title>Watch-IT !!! - ${title }</title>
</head>
<body>
	<div class="container">
		</br>
		<div class="row">
			<div class="col-lg-12"> <!-- breadcrumb for displaying all products -->
					<nav aria-label="breadcrumb">
  						<ol class="breadcrumb">
    						<li class="breadcrumb-item"><a href="${contextRoot }/home">Home</a></li>
    						<li class="breadcrumb-item active" aria-current="/all/listproducts">Update Product</li>
  						</ol>
					</nav>
				
				<!-- breadcrumb for displaying products according to category -->
			</div>
			<div class="col-md-offset-2 col-md-8">
				<div class="card card-primary" style="align:center;">
					<div class="card-header"><h4>Update Product</h4></div>
					<div class="card-body">
						<form:form class="form-horizontal" modelAttribute="productObj" action="${contextRoot }/updateProduct" method="post" enctype="multipart/form-data" id="form1">
							<form:hidden path="id"></form:hidden>
							<div class="form-group row">
								<label class="control-label col-md-4" for="name">Enter Product Name :</label>
								<div class="col-md-8">
									<form:input path="productName" placeholder="Product Name" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Enter Brand Name :</label>
								<div class="col-md-8">
									<form:input path="productBrand" placeholder="Brand Name" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="name">Select Category :</label>
								<div class="col-md-8">
									<form:select path="category.id" placeholder="Category" class="form-control">
										<c:forEach var="c" items="${categoryList}">
											<form:option value="${c.id }">${c.categoryname}</form:option>
										</c:forEach>
									</form:select>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Enter Price &nbsp; <i class="fas fa-rupee-sign"></i> :</label>
								<div class="col-md-8">
									<form:input path="productPrice" placeholder="Price" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Enter Quantity :</label>
								<div class="col-md-8">
									<form:input type="number" path="productQuantity" placeholder="Quantity" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Enter Display Type :</label>
								<div class="col-md-8">
									<form:input path="productDisplayType" placeholder="Display Type" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Enter Key Specs :</label>
								<div class="col-md-8">
									<form:input path="productKeySpecs" placeholder="Specifications" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Enter Features :</label>
								<div class="col-md-8">
									<form:textarea path="productDescription" placeholder="Features" rows="3" class="form-control"></form:textarea>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="brand">Select Image :</label>
								<div class="col-md-8">
									<form:input path="image" type="file" class="form-control"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-offset-2 col-md-4">
									<button type="submit" class="btn btn-primary">Update Product</button>
								</div>
								<div class="col-md-offset-2 col-md-4">
									<a href="${contextRoot}/all/listProducts" class="btn btn-primary">Back</a>
								</div>
							</div>	
						</form:form>	
					</div>	<!-- card body -->
				</div>	<!-- card -->
			</div>	<!-- cols offset -->
		</div> <!-- row -->
		
	</div> <!-- Container -->
	
</body>
</html>