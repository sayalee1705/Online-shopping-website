<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url> 
<!DOCTYPE html>
<%@ page isELIgnored="false" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Watch-IT!!! - ${title}</title>
    
    <script type="text/javascript">
    	window.menu ='${title}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
    <!-- Bootstrap sandstone theme -->
    <link href="${css}/bootstrap-flatly-theme.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/shop-homepage.css" rel="stylesheet">

  </head>

  <body>
	<div class="wrapper">	
	    <!-- Navigation -->
	    <%@ include file="./MasterPage/HeaderNavBar.jsp" %>
	   
	    <!-- Page Content -->
	    <!-- Loading the home content -->
	    <div class="content">
		    <c:if test="${userClickHome == true }">
		    	<%@ include file="HomePage.jsp" %>
		    </c:if>
		    
		    <!-- Loading the about us content -->
		    <c:if test="${userClickAbout == true }">
		    	<%@ include file="about.jsp" %>
		    </c:if>
		    
		     <!-- Loading the contact content -->
		     <c:if test="${userClickContact == true }">
		    	<%@ include file="contact.jsp" %>
		    </c:if>
		    <!-- Loading the view all products content -->
		    <c:if test="${userClickProducts == true }">
		    	<%@ include file="listProducts.jsp" %>
		    </c:if>
		    <c:if test="${userClickCategory == true }">
		    	<%@ include file="listProducts.jsp" %>
		    </c:if>
		    
		    <!-- Loading view info page -->
		    <c:if test="${userClickProductsInfo== true }">
		    	<%@ include file="getproductinfo.jsp" %>
		    </c:if>
		    <c:if test="${userClickProductsDelete == true }">
		    	<%@ include file="listProducts.jsp" %>
		    </c:if>
		    <c:if test="${userClickAddProduct == true }">
		    	<%@ include file="addProduct.jsp" %>
		    </c:if>
		    <c:if test="${userClickSubmit == true }">
		    	<%@ include file="listProducts.jsp" %>
		    </c:if>
		    <c:if test="${userClickUpdate == true}">
		    	<%@ include file="updateProduct.jsp" %>
		    </c:if>
		</div>
	    <!-- Footer -->
	    <%@ include file="./MasterPage/Footer.jsp" %>
	    
	    <!-- Bootstrap core JavaScript -->
	    <script src="${js}/jquery.js"></script>
	    <script src="${js}/bootstrap.bundle.min.js"></script>
	    
	    <!-- Coded javascript for glowing menu -->
	    <script src="${js}/myapp.js"></script>
	</div>
  </body>

</html>
    