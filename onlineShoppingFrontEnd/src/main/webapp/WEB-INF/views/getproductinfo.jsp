<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<title>Watch-IT!!!-${contextRoot }</title>

<!-- cdn for jquery validation -->
<script src="${js }/jquery.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
	
<script type="text/javascript">
$(document).ready(function(){
	$('#form1').validate({
		rules:{
			requestedQuantity:{required:true,number:true,max:3}
		},
		messages:{
			requestedQuantity: {required:'<span style=color:red>Field cannot be blank</span>',
								max:'<span style=color:red>Cannot place order for quantity more than 3!</span>'}
			}
	})

});
</script>	
	
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
  							<form action="${contextRoot}/cart/add/${productObj.id}" id="form1">
	    						<h5 class="card-title"><b>${productObj.productName }</b></h5>
	    						<hr/>
	    						<p class="card-text"><b>Price</b>: <i class="fas fa-rupee-sign"></i> ${productObj.productPrice }</p>
	    						<p class="card-text"><b>Brand</b>: ${productObj.productBrand }</p>
	    						<p class="card-text"><b>Features</b>: ${productObj.productDescription }</p>
	    						<p class="card-text"><b>Key Specs</b>: ${productObj.productKeySpecs }</p>
	    						<p class="card-text"><b>Display Type</b>: ${productObj.productDisplayType }</p>
	    						<c:choose>
		    							<c:when test="${productObj.productQuantity < 1 }">
		    								<p class="card-text"><b>Available Quantity</b>: <span style="color:red" >Out Of Stock!</span></p>
		    							</c:when>
		    						<c:otherwise>
		    							<p class="card-text" id="quantity"><b>Available Quantity</b>: ${productObj.productQuantity }</p>
		    						</c:otherwise>
	    						</c:choose>
	    						<security:authorize access="hasRole('ROLE_USER')">
	    							<c:choose>
	    								<c:when test="${productObj.productQuantity < 1 }">
	    									<p class="card-text"><b>Required Quantity</b>: <input type="number" name="requestedQuantity" value="1" disabled></p>
	    								</c:when>
	    								<c:otherwise>
	    									<p class="card-text"><b>Required Quantity</b>: <input type="number" id="requestedQuantity" name="requestedQuantity" value="1"></p>
	    								</c:otherwise>
	    							</c:choose>
	    						</security:authorize>
	    						<a href="${contextRoot }/all/listProducts" class="btn btn-primary">Go to Products</a> 
	    						<security:authorize access="hasRole('ROLE_USER')">
	    							<c:choose>
			    						<c:when test="${productObj.productQuantity < 1 }">
			    							<button class="btn btn-primary btn-md disabled" type="submit" ><strike>
			    							<i class="fas fa-shopping-cart"></i> Add To Cart</strike></button>
			    						</c:when>
			    						<c:otherwise>
			    							<button class="btn btn-primary btn-md" type="submit">
			    							<i class="fas fa-shopping-cart"></i> Add To Cart</button>
			    						</c:otherwise>
	    							</c:choose>
	    						</security:authorize>
    						</form>
  						</div>	
  				</div>
				
			</div>
		</div>
	</div> 
</body>
</html>