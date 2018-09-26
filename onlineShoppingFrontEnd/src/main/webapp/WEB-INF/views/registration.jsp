<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<spring:url var="js" value="/resources/js"></spring:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<%@ page isELIgnored="false" %>
    
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
		jQuery.validator.addMethod("accept", function(value, element, param) {
			  return value.match(new RegExp("." + param + "$"));
			});
		$('#form1').validate({
			rules:{
				firstName:{required:true,accept: "[a-zA-Z]+"},
				lastName:{required:true,accept:"[a-zA-Z]+"},
				phNo:{required:true,number:true,minlength:10,maxlength:10},
				"user.email":{required:true,email:true},
				"user.password":{required:true,minlength:2,maxlength:10},
				"billingAddress.apartmentnumber":{required:true,accept:"[a-zA-Z0-9]+"},
				"billingAddress.streetname":{required:true,accept:"[a-zA-Z0-9]+"},
				"billingAddress.city":{required:true,accept:"[a-zA-Z0-9]+"},
				"billingAddress.state":{required:true,accept:"[a-zA-Z0-9]+"},
				"billingAddress.country":{required:true,accept:"[a-zA-Z0-9]+"},
				"billingAddress.zipcode":{required:true,number:true},
				"shippingAddress.apartmentnumber":{required:true,accept:"[a-zA-Z0-9]+"},
				"shippingAddress.streetname":{required:true,accept:"[a-zA-Z0-9]+"},
				"shippingAddress.city":{required:true,accept:"[a-zA-Z0-9]+"},
				"shippingAddress.state":{required:true,accept:"[a-zA-Z0-9]+"},
				"shippingAddress.country":{required:true,accept:"[a-zA-Z0-9]+"},
				"shippingAddress.zipcode":{required:true,number:true},
			},
			messages:{
				firstName:{required:'<span class="error">Field cannot be blank</span>',accept:'Enter Leters only'},
				lastName:{required:'<span class="error">Field cannot be blank</span>',accept:'Enter Leters only'},
				phNo:{required:'Field cannot be blank',minlength:'Enter valid phone number',maxlength:'Enter valid phone number'},
				"user.email":{required:'Field cannot be blank',email:'Enter valid email address'},
				"user.password":{required:'Field cannot be blank',minlength:'password should be more than 2 words',maxlength:'password cannot be larger than 10 words'},
				"billingAddress.apartmentnumber":{required:'Field cannot be blank',accept:'Enter letters and numbers only'},
				"billingAddress.streetname":{required:'Field cannot be blank',accept:'Enter letters only'},
				"billingAddress.city":{required:'Field cannot be blank',accept:'Enter letters only'},
				"billingAddress.state":{required:'Field cannot be blank',accept:'Enter letters only'},
				"billingAddress.country":{required:'Field cannot be blank',accept:'Enter letters only'},
				"billingAddress.zipcode":{required:'Field cannot be blank',number:'This field only contains number'},
				"shippingAddress.apartmentnumber":{required:'Field cannot be blank',accept:'Enter letters and numbers only'},
				"shippingAddress.streetname":{required:'Field cannot be blank',accept:'Enter letters and numbers only'},
				"shippingAddress.city":{required:'Field cannot be blank',accept:'Enter letters only'},
				"shippingAddress.state":{required:'Field cannot be blank',accept:'Enter letters only'},
				"shippingAddress.country":{required:'Field cannot be blank',accept:'Enter letters only'},
				"shippingAddress.zipcode":{required:'Field cannot be blank',number:'This field only contains number'},
			}
			
		})
		
	});


	function fillShippingAddress(form){
		var checkBox= document.getElementById("shippingaddressform");
		if(checkBox.checked == true){
			form["shippingAddress.apartmentnumber"].value=form["billingAddress.apartmentnumber"].value;
			form["shippingAddress.streetname"].value=form["billingAddress.streetname"].value;
			form["shippingAddress.city"].value=form["billingAddress.city"].value;
			form["shippingAddress.state"].value=form["billingAddress.state"].value;
			form["shippingAddress.streetname"].value=form["billingAddress.streetname"].value;
			form["shippingAddress.country"].value=form["billingAddress.country"].value;
			form["shippingAddress.zipcode"].value=form["billingAddress.zipcode"].value;
			
		}
		if(checkBox.checked == false){
			form["shippingAddress.apartmentnumber"].value="";
			form["shippingAddress.streetname"].value="";
			form["shippingAddress.city"].value="";
			form["shippingAddress.state"].value="";
			form["shippingAddress.streetname"].value="";
			form["shippingAddress.country"].value="";
			form["shippingAddress.zipcode"].value="";
		}
	}	
</script>
<style type="text/css">
.error{
	color:red;
}
</style>
</head>
<body>
	<div class="container">
		</br>
		<div class="row">
			<div class="col-lg-12">
				<nav aria-label="breadcrumb">
  						<ol class="breadcrumb">
    						<li class="breadcrumb-item"><a href="${contextRoot }/home">Home</a></li>
    						<li class="breadcrumb-item active" aria-current="/all/register">Registration</li>
  						</ol>
					</nav>
			</div>
			<div class="col-md-offset-2 col-md-8">
				<div class="card card-primary">
					<div class="card-header"><h4>Registration</h4></div>
					<div class="card-body">
						<h5><b>Personal Details</b></h5>
						<form:form class="form-horizontal" modelAttribute="userobj" action="${contextRoot }/register" id="form1">
							<form:hidden path="id"></form:hidden>
							<div class="form-group row">
								<label class="control-label col-md-4" for="name">Full Name:</label>
								<div class="col-md-4">
									<form:input path="firstName" placeholder="First Name" class="form-control" id="firstName"></form:input>
								</div>
								<div class="col-md-4">
									<form:input path="lastName" placeholder="Last Name" class="form-control" id="lastName"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="number">Mobile No.:</label>
								<div class="col-md-8">
									<form:input path="phNo" placeholder="Mobile No." class="form-control" id="phNo"></form:input>
								</div>
							</div>
							<hr/>
							<h5><b>Login Details</b></h5>
							<div class="form-group row">
								<label class="control-label col-md-4" for="email">Email ID:</label>
								<div class="col-md-8">
									<form:input path="user.email" placeholder="Email-ID" class="form-control" id="user.email"></form:input>
									<span style="color:red">${error}</span>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="password">Password:</label>
								<div class="col-md-8">
									<form:input type="password" path="user.password" placeholder="Password" class="form-control" id="user.password"></form:input>
								</div>
							</div>
							
							<hr/>
							<h5><b>Billing Address Details</b></h5>
							</hr>
							<div class="form-group row">
								<label class="control-label col-md-4" for="address">Address Line One:</label>
								<div class="col-md-8">
									<form:input path="billingAddress.apartmentnumber" placeholder="Apartment Details" class="form-control" id="billingAddress.apartmentnumber"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="address">Street Name:</label>
								<div class="col-md-8">
									<form:input path="billingAddress.streetname" placeholder="Street Name" class="form-control" id="billingAddress.streetname"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="city">City:</label>
								<div class="col-md-8">
									<form:input path="billingAddress.city" placeholder="city" class="form-control" id="billingAddress.city"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="state">State:</label>
								<div class="col-md-8">
									<form:input path="billingAddress.state" placeholder="State" class="form-control" id="billingAddress.state"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="country">Country:</label>
								<div class="col-md-8">
									<form:input path="billingAddress.country" placeholder="Country" class="form-control" id="billingAddress.country"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="postalCode">Postal Code:</label>
								<div class="col-md-8">
									<form:input path="billingAddress.zipcode" placeholder="Postal Code" class="form-control" id="billingAddress.zipcode"></form:input>
								</div>
							</div>
							<hr/>
							<h5><b>Shipping Address Details</b></h5>
							<div class="form-group row">
    							<div class="form-check col-md-8">
      								<input type="checkbox" onclick="fillShippingAddress(this.form)" id="shippingaddressform">
      								<label class="form-check-label" for="gridCheck">
        								Check if Shipping Address is same as Billing Address 
      								</label>
    							</div>
  							</div>
  							<div class="form-group row">
								<label class="control-label col-md-4" for="address">Address Line One:</label>
								<div class="col-md-8">
									<form:input path="shippingAddress.apartmentnumber" placeholder="Apartment Details" class="form-control" id="shippingAddress.apartmentnumber"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="address">Street Name:</label>
								<div class="col-md-8">
									<form:input path="shippingAddress.streetname" placeholder="Street Name" class="form-control" id="shippingAddress.streetname"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="city">City:</label>
								<div class="col-md-8">
									<form:input path="shippingAddress.city" placeholder="city" class="form-control" id="shippingAddress.city"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="state">State:</label>
								<div class="col-md-8">
									<form:input path="shippingAddress.state" placeholder="State" class="form-control" id="shippingAddress.state"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="country">Country:</label>
								<div class="col-md-8">
									<form:input path="shippingAddress.country" placeholder="Country" class="form-control" id="shippingAddress.country"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="postalCode">Postal Code:</label>
								<div class="col-md-8">
									<form:input path="shippingAddress.zipcode" placeholder="Postal Code" class="form-control" id="shippingAddress.zipcode"></form:input>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-offset-2 col-md-4">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
								<div class="col-md-offset-2 col-md-4">
									<a href="${contextRoot}/home" class="btn btn-primary">Back</a>
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