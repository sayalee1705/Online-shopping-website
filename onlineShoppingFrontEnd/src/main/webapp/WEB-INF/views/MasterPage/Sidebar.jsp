<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Side bar -->
	<div class="list-group">
			<b><h3>Categories</h3></b>
			<c:forEach var="c" items="${categoryList}">
            <a href="${contextRoot}/show/category/${c.id}/all/listProducts" class="list-group-item">${c.categoryname }</a>
            </c:forEach>
    </div>
	
</body>
</html>