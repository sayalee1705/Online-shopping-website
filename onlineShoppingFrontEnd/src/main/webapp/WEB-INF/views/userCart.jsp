<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Link for icons -->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	</br></br>
	<div class="row">
		<div class="col-lg-12">
			<nav aria-label="breadcrumb">
  				<ol class="breadcrumb">
  				  	<li class="breadcrumb-item"><a href="${contextRoot }/home">Home</a></li>
    				<li class="breadcrumb-item active" aria-current="/cart/getcart">My Cart</li>
  				</ol>
			</nav>	
		</div>
		<div class="col-lg-12">
			<c:if test="${ !empty(cartItems) }">
				<a href="<c:url value='/cart/clearcart'></c:url>" class="btn btn-danger" pull-left  >
					<i class="fas fa-trash-alt"></i>
					Clear Cart
				</a>
			</c:if>	
			</br>
			<table class="table table-striped">
				<thead id="thead">
					<tr><th>Product Name</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
					</tr>
				</thead>
				<c:set var="grandTotal" value="0"></c:set>
				<tbody>
					<c:forEach items="${cartItems }" var="cartItem">
						<tr>
							<td>${cartItem.product.productName }</td>
							<td>${cartItem.quantity }</td>
							<td><i class="fas fa-rupee-sign"></i> ${cartItem.totalPrice }</td>
							<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>
							
							<td><a href="<c:url value='/cart/removecartitem/${cartItem.cartItemId }'></c:url>" class="btn btn-danger" pull-left ><i class="fas fa-times"></i> Remove</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<h4><span class="badge badge-info">Total Price : <i class="fas fa-rupee-sign"></i> ${grandTotal}</span></h4>
				<c:if test="${empty(cartItems) }">
					<h3>Your Cart is Empty</h3> <a href="${contextRoot }/all/listProducts" class="btn btn-primary">Start Shopping</a>
				</c:if>
				<c:if test="${ !empty(cartItems) }">
					<a href="<c:url value='/cart/shippingaddressform'></c:url>" class="btn btn-success pull-right">
						<i class="fas fa-shopping-cart"></i> Proceed With Order </a>
					<a href="${contextRoot }/all/listProducts" class="btn btn-success pull-right">
						<i class="fas fa-shopping-cart"></i> Shop More </a>	  
				</c:if>
		</div>	
	</div>
</div>
</body>			
</html>