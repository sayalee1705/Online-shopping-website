<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		</br></br>
		<div class="row">
			<div class="col-lg-12">
				<div class="card card-primary">
					<div class="card-header"><h4>${msg }</h4></div>
					<div class="card-body">
						<h4>Shipping Details</h4>
						<p class="card-text">${shippingaddress.apartmentnumber }</p>
						<p class="card-text">${shippingaddress.streetname }</p>
						<p class="card-text">${shippingaddress.city }</p>
						<p class="card-text">${shippingaddress.state }</p>
						<p class="card-text">${shippingaddress.country }</p>
						<p class="card-text">${shippingaddress.zipcode }</p>
						</hr>
						<h4>Order Details</h4>
						<table class="table table-striped">
				<thead id="thead">
					<tr><th>Product Name</th><th>Quantity</th><th>Total Price</th>
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
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<h4><span class="badge badge-info">Total Price : <i class="fas fa-rupee-sign"></i> ${grandTotal}</span></h4>
					</div>
				</div>
				</br>
				<a href="<c:url value='/cart/clearcart'></c:url>" class="btn btn-danger" pull-left  >
					<i class="fas fa-shopping-cart"></i>
					Continue Shopping
				</a>
			</div>
		</div>
	</div>
</body>
</html>