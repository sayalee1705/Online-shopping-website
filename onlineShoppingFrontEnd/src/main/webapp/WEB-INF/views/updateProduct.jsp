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
		</br></br>
		<form:form modelAttribute="productObj" action="${contextRoot}/updateProduct">
			<form:hidden path="id"></form:hidden>
			<table class="table table-bordered">
				<tr>
					<td><b>Enter Product Name :</b></td>
					<td><form:input path="productName"></form:input></td>
				</tr>
				<tr>
					<td><b>Enter Brand Name :</b></td>
					<td><form:input path="productBrand"></form:input></td>
				</tr>
				<tr>
					<td><b>Select Category :</b></td>
					<td><form:select path="category.id">
							<c:forEach var="c" items="${categoryList}">
								<form:option value="${c.id }">${c.categoryname}</form:option>
							</c:forEach>
						</form:select>
					</td>
				</tr>
				<tr>
					<td><b>Enter Price &nbsp; <i class="fas fa-rupee-sign"></i>  :</b></td>
					<td><form:input path="productPrice"></form:input></td>
				</tr>
				<tr>
					<td><b>Enter Quantity :</b></td>
					<td><form:input path="productQuantity"></form:input></td>
				</tr>
				<tr>
					<td><b>Enter Display Type :</b></td>
					<td><form:input path="productDisplayType"></form:input></td>
				</tr>
				<tr>
					<td><b>Enter Key Specs :</b></td>
					<td><form:input path="productKeySpecs"></form:input></td>
				</tr>
				<tr>
					<td><b>Enter Features :</b></td>
					<td><form:textarea path="productDescription"></form:textarea></td>
				</tr>
				<tr>
					<td><button type="submit" class="btn btn-primary">Update Product</button>
					<td><button type="reset" class="btn btn-info">Reset</button></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>