<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<title>Insert title here</title>
</head>
<body>	
	<div class="container">
	</br></br>
		<div class="row">
			<!-- Displaying product image -->
			<div class="col-sm-4">
				<div class="thumbnail">
					<img src="<c:url value='/resources/images/${productObj.id }.jpg'></c:url>" class="img img-responsive" height="350px" width="350px"/>
				</div>
			</div>
			<!-- Displaying product details -->
			<div class="col-sm-8">
				<div class="card">
  						<div class="card-body">
    						<h5 class="card-title"><b>${productObj.productName }</b></h5>
    						<hr/>
    						<p class="card-text"><b>Price</b>: <i class="fas fa-rupee-sign"></i> ${productObj.productPrice }</p>
    						<p class="card-text"><b>Brand</b>: ${productObj.productBrand }</p>
    						<p class="card-text"><b>Features</b>: ${productObj.productDescription }</p>
    						<p class="card-text"><b>Key Specs</b>: ${productObj.productKeySpecs }</p>
    						<p class="card-text"><b>Display Type</b>: ${productObj.productDisplayType }</p>
    						<p class="card-text"><b>Quantity</b>: ${productObj.productQuantity }</p>
    						<a href="${contextRoot }/all/listProducts" class="btn btn-primary">Go to Products</a> 
    						<a href="${contextRoot}/cart/add/${productObj.id}" class="btn btn-primary">Add to Cart<i class="fas fa-cart-arrow-down"></i></a>
  						</div>	
  				</div>
				
			</div>
		</div>
	</div> 
</body>
</html>