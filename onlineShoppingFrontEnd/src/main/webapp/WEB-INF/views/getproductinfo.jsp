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
	<div class="conatiner">
		</br></br>
		<div class="row h-100">
        	<div class="col-sm-12 my-auto">
  				<div class="card">
  						<div class="card-body">
    						<h5 class="card-title"><b>${productObj.productName }</b></h5>
    						<p class="card-text"><b>Price</b>: ${productObj.productPrice }</p>
    						<p class="card-text"><b>Brand</b>: ${productObj.productBrand }</p>
    						<p class="card-text"><b>Features</b>: ${productObj.productDescription }</p>
    						<p class="card-text"><b>Key Specs</b>: ${productObj.productKeySpecs }</p>
    						<p class="card-text"><b>Display Type</b>: ${productObj.productDisplayType }</p>
    						<p class="card-text"><b>Quantity</b>: ${productObj.productQuantity }</p>
    						<a href="${contextRoot }/all/listProducts" class="btn btn-primary">Go to Products</a>
  						</div>	
  				</div>	
			</div>
			
		</div>
	</div>	 
</body>
</html>