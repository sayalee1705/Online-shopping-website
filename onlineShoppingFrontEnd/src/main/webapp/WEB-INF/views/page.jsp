<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %> 
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
    
    <!-- Bootstrap dataTable -->
    <link href="${css}/dataTables.bootstrap.css" rel="stylesheet"> 
    <link href="${css}/dataTables.bootstrap4.css" rel="stylesheet"> 
    <link href="${css}/dataTables.jqueryui.css" rel="stylesheet"> 
    
    

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
		   
		   <!-- Loading the user registration page -->
		   <c:if test="${userClickRegistration == true}">
		   		<%@ include file="registration.jsp" %>
		   </c:if>
		   
		   <!-- Loading page after registration -->
		   <c:if test="${userClickRegister == true }">
		   		<%@ include file="signIn.jsp" %>
		   </c:if>
		   
		   <!-- Loading the user sign in page -->
		   <c:if test="${userClickSignIn == true }">
		   		<%@ include file="signIn.jsp" %>
		   </c:if>
		   
		   <!-- Loading user sign out page -->
		   <c:if test="${userClickSignOut == true }">
		   		<%@ include file="HomePage.jsp" %>
		   </c:if>
		   
		    <!-- Loading view info page -->
		    <c:if test="${userClickProductsInfo== true }">
		    	<%@ include file="getproductinfo.jsp" %>
		    </c:if>
		    
		    <!-- Loading view products page -->
		    
		    <c:if test="${userClickProductsDelete == true }">
		    	<%@ include file="listProducts.jsp" %>
		    </c:if>
		    
		    <!-- Loading products based on category -->
		    <c:if test="${userClickCategory == true }">
		    	<%@ include file="productByCategory.jsp" %>
		    </c:if>
		    
		    <!-- Loading add products page -->
		    <c:if test="${userClickAddProduct == true }">
		    	<%@ include file="addProduct.jsp" %>
		    </c:if>
		    <c:if test="${userClickSubmit == true }">
		    	<%@ include file="listProducts.jsp" %>
		    </c:if>
		    
		    <!-- Loading update product page -->
		    <c:if test="${userClickUpdate == true}">
		    	<%@ include file="updateProduct.jsp" %>
		    </c:if>
		    
		    <!-- Loading cart page -->
		    <c:if test="${userClickAddToCart == true }">
		    	<%@ include file="userCart.jsp" %>
		    </c:if>
		    
		    <!-- Loading place order page -->
		    <c:if test="${userClickPlaceOrder == true }">
		    	<%@ include file="finalShippingAddress.jsp" %>
		    </c:if>
		    
		    <!-- Loading final Detail page -->
		    <c:if test="${userClickFinalOrder == true }">
		    	<%@ include file="finalOrderDetails.jsp" %>
		    </c:if>
		    
		</div>
		
		
	    <!-- Footer -->
	  <!-- <%@ include file="./MasterPage/Footer.jsp" %> -->  
	    
	    
	    
	    <!-- Bootstrap core JavaScript -->
	    <script src="${js}/jquery.js"></script>
	    <script src="${js }/jquery.validate.js"></script>
	    <script src="${js}/bootstrap.bundle.min.js"></script>
	    
	    <!-- Data Table -->
	    <script src="${js}/jquery.dataTables.js"></script> 
	    
	    <!-- Data Table Bootsrap -->
	    <script src="${js}/dataTables.bootstrap.js"></script> 
	    <script src="${js}/dataTables.bootstrap4.js"></script> 
	     <script src="${js}/dataTables.jqueryui.js"></script>
	    
	    
	    <!-- Coded javascript for glowing menu -->
	    <script src="${js}/myapp.js"></script>
	</div>
  </body>

</html>
    