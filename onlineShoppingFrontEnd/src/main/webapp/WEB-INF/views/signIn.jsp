<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WatchIT!!!-${contextRoot}</title>
</head>
<body>
	<div class="container">
    </br>
    	<div class="row">
    		<div class="col-lg-12">
				<nav aria-label="breadcrumb">
  					<ol class="breadcrumb">
    					<li class="breadcrumb-item"><a href="${contextRoot }/home">Home</a></li>
    					<li class="breadcrumb-item active" aria-current="/all/signIn">Sign-In</li>
  					</ol>
				</nav>
			</div>
			<div class="col-lg-12">
				<span style="color:red">${error }</span><br>
			</div>
			<div class="col-md-offset-2 col-md-8">
				<div class="card card-primary">
					<div class="card-header"><h4>Sign-In</h4></div>
					<div class="card-body">
						<c:url value="/j_spring_security_check" var="url"></c:url>
						<form method="post" action="${url }">
							<div class="form-group row">
								<label class="control-label col-md-4" for="name">Email-ID:</label>
								<div class="col-md-8">
									<input class="form-control" type="text" name="j_username" placeholder="Registered Email-ID"/>
								</div>
							</div>
							<div class="form-group row">
								<label class="control-label col-md-4" for="name">Password:</label>
								<div class="col-md-8">
									<input  class="form-control" type="password" name="j_password" placeholder="Registered Password"/>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-offset-2 col-md-4">
									<button type="submit" class="btn btn-primary" id="signin">Sign-In</button>
								</div>
								<div class="col-md-offset-2 col-md-4">
									<a href="${contextRoot}/home" class="btn btn-primary">Back</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
    	</div>
	</div>
</body>
</html>