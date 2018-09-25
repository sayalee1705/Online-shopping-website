<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<spring:url var="js" value="/resources/js"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- cdn for jquery validation -->
<script src="${js }/jquery.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
	
<script type="text/javascript">
	
	$(document).ready(function(){
		$('#form1').validate({
			rules:{
				"apartmentnumber":{required:true},
				"streetname":{required:true},
				"state":{required:true},
				"city":{required:true},
				"country":{required:true},
				"zipcode":{required:true,number:true}
			},
			messages:{
				"apartmentnumber":{required:'<span class="error">Field cannot be blank</span>'},
				"streetname":{required:'<span class="error">Field cannot be blank</span>'},
				"state":{required:'<span class="error">Field cannot be blank</span>'},
				"city":{required:'<span class="error">Field cannot be blank</span>'},
				"country":{required:'<span class="error">Field cannot be blank</span>'},
				"zipcode":{required:'<span class="error">Field cannot be blank</span>'}
			}
		})
	})
</script>	
</head>
<body>
	<div class="container">
		</br>
		<div class="row">
			<div class="col-lg-12">
				<div class="card card-primary">
					<div class="card-body">
						<h5><b>Shipping Address Details</b></h5>
						<form:form class="form-horizontal" modelAttribute="shippingaddress" action="${contextRoot }/cart/createOrder" id="form1">
					<div class="form-group row">
								<label class="control-label col-md-4" for="address">Address Line One:</label>
								<div class="col-md-8">
									<form:input path="apartmentnumber" placeholder="Apartment Details" class="form-control" id="apartmentnumber"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="address">Street Name:</label>
								<div class="col-md-8">
									<form:input path="streetname" placeholder="Street Name" class="form-control" id="streetname"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="city">City:</label>
								<div class="col-md-8">
									<form:input path="city" placeholder="city" class="form-control" id="city"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="state">State:</label>
								<div class="col-md-8">
									<form:input path="state" placeholder="State" class="form-control" id="state"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="country">Country:</label>
								<div class="col-md-8">
									<form:input path="country" placeholder="Country" class="form-control" id="country"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="postalCode">Postal Code:</label>
								<div class="col-md-8">
									<form:input path="zipcode" placeholder="Postal Code" class="form-control" id="zipcode"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-offset-2 col-md-4">
									<button type="submit" class="btn btn-primary">Continue</button>
								</div>
								<div class="col-md-offset-2 col-md-4">
									<a href="${contextRoot}/cart/getcart" class="btn btn-primary">Back To Cart</a>
								</div>
							</div>
				</form:form>
							
					</div>
				</div>
				
			</div>
		</div>
	</div>
</body>
</html>